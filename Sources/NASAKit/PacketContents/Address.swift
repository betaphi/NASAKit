//
//  Address.swift
//  NASADecoder
//
//  Created by Bastian Rössler on 30.11.23.
//

import Foundation

public struct Address: Equatable
{
    public enum Class: UInt8
    {
        case outdoor = 0x10
        case htu = 0x11
        case indoor = 0x20
        case erv = 0x30
        case diffuser = 0x35
        case mcu = 0x38
        case rmc = 0x40
        case wiredRemote = 0x50
        case pim = 0x58
        case sim = 0x59
        case peak = 0x5A
        case powerDivider = 0x5B
        case onOffController = 0x60
        case wifiKit = 0x62
        case modbus = 0x63 // not certain that this is correct...
        case centralController = 0x65
        case dms = 0x6A
        case jigTester = 0x80
        case broadcastSelfLayer = 0xB0
        case broadcastControlLayer = 0xB1
        case broadcastSetLayer = 0xB2
        case broadcastControlAndSetLayer = 0xB3
        case broadcastModuleLayer = 0xB4
        case boradcastCSM = 0xB7
        case broadcastLocalLayer = 0xB8
        case broadcastCSML = 0xBF
        case undefiend = 0xFF
    }
    
    public var `class`: Class
    public var channel: UInt8
    public var address: UInt8
    
    public init(
        class: Class,
        channel: UInt8,
        address: UInt8
    ) {
        self.class = `class`
        self.channel = channel
        self.address = address
    }
    
    // Decode
    internal init(bytes: [UInt8]) throws
    {
        guard bytes.count == 3 else { throw AddressDecodingError.invalidByteCount(byteCount: bytes.count) }
        guard let `class` = Class(rawValue: bytes[0]) else { throw AddressDecodingError.invalidClass(classByte: bytes[0]) }
        self.class = `class`
        self.channel = bytes[1]
        self.address = bytes[2]
    }
    
    // Encode
    internal func encode() -> [UInt8]
    {
        [self.class.rawValue, self.channel, self.address]
    }
}

public enum AddressDecodingError: Error
{
    case invalidByteCount(byteCount: Int)
    case invalidClass(classByte: UInt8)
}
