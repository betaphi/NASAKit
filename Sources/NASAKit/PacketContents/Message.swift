//
//  Message.swift
//  NASADecoder
//
//  Created by Bastian Rössler on 30.11.23.
//

import Foundation

public struct Message: Identifiable, Equatable
{
    public var id: UUID
    
    public var key: UInt16
    public var payload: Payload
    
    public static func == (lhs: Self, rhs: Self) -> Bool
    {
        lhs.key == rhs.key && lhs.payload == rhs.payload
    }
    
    public init(
        id: UUID = UUID(),
        key: UInt16,
        payload: Message.Payload
    ) {
        self.id = id
        self.key = key
        self.payload = payload
    }
    
    public static func payloadType(fromKey key: UInt16) -> PayloadType?
    {
        let rawType = UInt8((UInt32(key) & 1536) >> 9)
        return .init(rawValue: rawType)
    }

    public enum PayloadType: UInt8
    {
        case enumeration = 0
        case variable = 1
        case longVariable = 2
        case structure = 3
    }
    
    public enum Payload: Equatable
    {
        case enumeration(UInt8)
        case variable(UInt16)
        case longVariable(UInt32)
        case structure(Data)
    }
    
    // Encode
    internal func encode() -> [UInt8]
    {
        var result: [UInt8] = key.bytes
        
        switch self.payload
        {
        case .enumeration(let uInt8):
            result.append(uInt8)
        case .variable(let uInt16):
            result.append(contentsOf: uInt16.bytes)
        case .longVariable(let uInt32):
            result.append(contentsOf: uInt32.bytes)
        case .structure(let data):
            result.append(contentsOf: [UInt8](data))
        }
        
        return result
    }
    
    // Decode
    public static func decodeMessage(fromBytes bytes: [UInt8]) throws -> (Message, [UInt8])
    {
        guard bytes.count >= 3 else {
            throw MessageDecodingError.bytesTooShort(count: bytes.count)
        }
        
        let key = (UInt16(bytes[0]) << 8) | UInt16(bytes[1])
        
        let type = UInt8((UInt32(key) & 1536) >> 9)
        
        let payload: Payload
        let returnBytes: [UInt8]
        
        switch Self.payloadType(fromKey: key)
        {
        case .enumeration:
            let enumCase = bytes[2]
            payload = .enumeration(enumCase)
            returnBytes = Array(bytes[3...])
        case .variable:
            let value = (UInt16(bytes[2]) << 8) | UInt16(bytes[3])
            payload = .variable(value)
            returnBytes = Array(bytes[4...])
        case .longVariable:
            let value = (UInt32(bytes[2]) << 24) | (UInt32(bytes[3]) << 16) | (UInt32(bytes[4]) << 8) | UInt32(bytes[5])
            payload = .longVariable(value)
            returnBytes = Array(bytes[6...])
        case .structure:
            let value = Data(Array(bytes[2...]))
            payload = .structure(value)
            returnBytes = []
        default:
            throw MessageDecodingError.invalidMessageType(type: type)
        }
        
        return (
            Message(id: UUID(), key: key, payload: payload),
            returnBytes
        )
    }
}

public enum MessageDecodingError: Error
{
    case bytesTooShort(count: Int)
    case invalidMessageType(type: UInt8)
    case messageTypeMismatch
}
