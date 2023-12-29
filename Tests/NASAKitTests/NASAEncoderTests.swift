//
//  NASAEncoderTests.swift
//
//
//  Created by Bastian Rössler on 29.12.23.
//

import XCTest
@testable import NASAKit

@MainActor
final class NASAEncoderTests: XCTestCase
{
    func testEncode() async throws
    {
        let date = Date()
        
        let messages: [Message] = [
            .init(key: 0x4000, payload: .enumeration(3)),
            .init(key: 0x8280, payload: .variable(1234)),
            .init(key: 0x8405, payload: .longVariable(12345678))
        ]
        
        let packet = Packet(
            date: date,
            source: .init(class: .wifiKit, channel: 1, address: 0),
            destination: .init(class: .broadcastSetLayer, channel: 1, address: 0),
            packetNumber: 123,
            messages: messages
        )
        
        let encoded = try packet.encode()
        
        let decoded = try Packet(id: packet.id, date: date, bytes: encoded)
        
        XCTAssertEqual(packet, decoded)
    }
}
