//
//  Package.swift
//  NASADecoder
//
//  Created by Bastian Rössler on 30.11.23.
//

import Foundation

public struct Packet: Identifiable, Equatable
{
    public init(
        id: UUID = UUID(),
        date: Date = Date(),
        source: Address,
        destination: Address,
        information: Bool = true,
        protocolVersion: UInt8 = 2,
        retryCount: UInt8 = 0,
        packetType: Packet.PacketType = .normal,
        dataType: Packet.DataType = .notification,
        packetNumber: UInt8,
        messages: [Message]
    ) {
        self.id = id
        self.date = date
        self.source = source
        self.destination = destination
        self.information = information
        self.protocolVersion = protocolVersion
        self.retryCount = retryCount
        self.packetType = packetType
        self.dataType = dataType
        self.packetNumber = packetNumber
        self.messages = messages
    }
    
    static let beginByte: UInt8 = 0x32
    static let endByte: UInt8 = 0x34
    static let maxPacketLength: Int = 1500
    static let minPacketLength: Int = 16
    
    /// For conformance to Identifiable protocol only
    public var id: UUID
    
    public var date: Date
    
    public var source: Address
    public var destination: Address
    
    public var information: Bool
    
    public var protocolVersion: UInt8
    
    public var retryCount: UInt8
    
    public enum PacketType: UInt8, Equatable
    {
        case standBy = 0
        case normal = 1
        case gathering = 2
        case install = 3
        case download = 4
    }
    
    public var packetType: PacketType
    
    public enum DataType: UInt8, Equatable
    {
        case undefined = 0
        case read = 1
        case write = 2
        case request = 3
        case notification = 4
        case response = 5
        case ack = 6
        case nack = 7
    }
    
    public var dataType: DataType
    
    public var packetNumber: UInt8
    
    /// Number of messages attached
    public var capacity: UInt8 {
        UInt8(messages.count)
    }
    
    public var messages: [Message]
    
    /// Use this static function in order to decode a Packet from an Array UInt8 of an undefined length where
    /// - Parameters:
    ///   - bytes: Array of bytes. Does not need to begin with 0x32 or end with 0x34
    ///   - date: Date when the bytes were received
    /// - Returns: Decoded Packet and the index of the byte after the end of the current Packet
    public static func decodePacket(bytes: [UInt8], date: Date) -> Result<(packet: Packet, nextIndex: Int), PacketDecodingError>
    {
        guard let startIndex = bytes.firstIndex(where: { $0 == Self.beginByte }) else {
            return .failure(.noBeginByte)
        }
        
        guard startIndex + 2 < bytes.count else {
            return .failure(.bufferNotLongEnough)
        }
        
        let size = (Int(bytes[startIndex+1]) << 8) | Int(bytes[startIndex+2])
        
        guard size >= Self.minPacketLength && size <= Self.maxPacketLength else {
            return .failure(.invalidPacketLength(nextIndex: startIndex+1))
        }
        
        let endIndex = startIndex + size + 1
        
        guard endIndex < bytes.count else {
            return .failure(.bufferNotLongEnough)
        }
        
        guard bytes[endIndex] == Self.endByte else {
            return .failure(.invalidEndByte(nextIndex: startIndex+1))
        }
        
        let packetBytes = Array(bytes[startIndex...endIndex])

        let packet: Packet
        do {
            packet = try Packet(date: date, bytes: packetBytes)
        } catch {
            return .failure(.invalidPacketError(underlyingError: error, nextIndex: startIndex+1))
        }
                
        return .success((packet, endIndex+1)) 
    }

    
    /// Initialize a new Packet
    /// - Parameters:
    ///   - date: Date when the Packet was received
    ///   - bytes: The raw data content of the packet. Must begin with 0x32 and end with 0x34
    public init(
        id: UUID = UUID(),
        date: Date = Date(),
        bytes: [UInt8]
    ) throws
    {
        self.id = id
        
        guard bytes.count >= Self.minPacketLength && bytes.count <= Self.maxPacketLength else { throw PacketInitializationError.invalidLength(count: bytes.count) }
        
        self.date = date
        
        // parse header
        // accessing those indexes is safe due to the byte count check in the beginning
        guard bytes[0] == 0x32 else { throw PacketInitializationError.invalidBeginByte }
        
        // verify size
        let size = (Int(bytes[1]) << 8) | Int(bytes[2])
        guard size == bytes.count - 2 else { throw PacketInitializationError.sizeMismatch(transmitted: size, received: bytes.count) }
        
        // verify crc16
        let crc = (UInt16(bytes[bytes.count-3]) << 8) | UInt16(bytes[bytes.count-2])
        let toCrc = Array(bytes[3 ..< bytes.count-3])
        
        let calculatedCrc = CRC16.calculate(toCrc)
        
        guard crc == calculatedCrc else { throw PacketInitializationError.checksumMismatch(transmitted: crc, calculated: calculatedCrc) }
    
        self.source = try .init(bytes: Array(bytes[3...5]))
        self.destination = try .init(bytes: Array(bytes[6...8]))
        
        self.information = (UInt32(bytes[9]) & 128) >> 7 == 1
        self.protocolVersion = UInt8((Int32(bytes[9]) & 96) >> 5)
        self.retryCount = UInt8((UInt32(bytes[9]) & 24) >> 3)
        
        let rawPacketType = UInt8(UInt32(bytes[10]) & 240) >> 4
        guard let packetType = PacketType(rawValue: rawPacketType) else { throw PacketInitializationError.invalidPacketType(raw: rawPacketType)}
        self.packetType = packetType
        
        let rawDataType = UInt8(UInt32(bytes[10]) & 15)
        guard let dataType = DataType(rawValue: rawDataType) else { throw PacketInitializationError.invalidDataType(raw: rawDataType) }
        self.dataType = dataType
        
        self.packetNumber = bytes[11]
        
        let capacity = bytes[12]
        
        var messages: [Message] = []
        var messageBytes = Array(bytes[13 ..< bytes.count-3])
        
        for _ in 0 ..< capacity
        {
            let (message, nextBytes) = try Message.decodeMessage(fromBytes: messageBytes)
            
            messages.append(message)
            messageBytes = nextBytes
        }
        
        self.messages = messages
    }
    
    /// Encode packet to Byte Array
    public func encode() throws -> [UInt8]
    {
        // Verfify Messages
        guard !self.messages.isEmpty else {
            throw PacketEncodingError.noMessages
        }
        
        guard self.messages.count <= 255 else {
            throw PacketEncodingError.tooManyMessages
        }
        
        if self.messages.count > 1
        {
            // Check that no struct is included in message count is > 1
            if self.messages.contains(where: {
                if case .structure = $0.payload { return true } else { return false }
            }) {
                throw PacketEncodingError.structNotOnlyMessage
            }
        }
        
        // Actaully encode the packet
        let source = self.source.encode()
        let destination = self.destination.encode()
        
        let information: UInt8 = (self.information ? 1 : 0) << 7
        let protocolVersion: UInt8 = self.protocolVersion << 5
        let retryCount: UInt8 = self.retryCount << 3
        
        let commandByte1 = information + protocolVersion + retryCount
        let commandByte2 = (self.packetType.rawValue << 4) + self.dataType.rawValue
        
        let messages = self.messages.flatMap { $0.encode() }
        
        let size = 2 // packet size itself
        + source.count
        + destination.count
        + 2 // commandByte1 and commandByte2
        + 1 // packet number
        + 1 // message capacity
        + messages.count
        + 2 // CRC16

        guard size + 2 <= Packet.maxPacketLength else {
            throw PacketEncodingError.packetTooLong
        }
        
        var result = [Packet.beginByte]
        + UInt16(size).bytes
        + source
        + destination
        + [commandByte1, commandByte2, self.packetNumber, UInt8(self.messages.count)]
        + messages
        
        let crc16 = CRC16.calculate(Array(result[3...]))
        
        result.append(contentsOf: crc16.bytes)
        
        result.append(Packet.endByte)
        
        return result
    }
    
}

public enum PacketEncodingError: Error
{
    /// Thrown when trying to encode a packet that includes a struct but also other messages
    /// This is not allowed by the NASA protocol
    case structNotOnlyMessage
    
    /// Packet does not contain messages
    case noMessages
    
    /// Packet contains more than 255 messages
    case tooManyMessages
    
    /// Packet is longer than 1500 bytes
    case packetTooLong
}

public enum PacketDecodingError: Error
{
    /// Thrown when first byte is not 0x32
    case noBeginByte
    
    /// Thrown when the decoded packet length is either too small or too large
    case invalidPacketLength(nextIndex: Int)
    
    /// Thrown when the message is not yet fully contained in the buffer
    case bufferNotLongEnough
    
    /// Thrown when byte[beginByteIndex + size] != 0x34
    case invalidEndByte(nextIndex: Int)
    
    /// Thrown when Packet initialization fails
    case invalidPacketError(underlyingError: Error, nextIndex: Int)
}

public enum PacketInitializationError: Error
{
    /// Data does not start with 0x32
    case invalidBeginByte
    
    /// Data too short or too long
    case invalidLength(count: Int)
    
    /// Reported size does not match the size of the data
    case sizeMismatch(transmitted: Int, received: Int)
    
    /// CRC16 failed
    case checksumMismatch(transmitted: UInt16, calculated: UInt16)
    
    /// Unknown or invalid PacketType
    case invalidPacketType(raw: UInt8)
    
    /// Unknown or invalid dataType
    case invalidDataType(raw: UInt8)
}
