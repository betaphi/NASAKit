//
//  UInt+DataTests.swift
//
//
//  Created by Bastian Rössler on 29.12.23.
//

import XCTest
@testable import NASAKit

final class UIntDataTests: XCTestCase
{
    func testUInt16()
    {
        let inputBytes: [UInt8] = [0xAB, 0x01]
        let inputValue: UInt16 = (UInt16(inputBytes[0]) << 8) + UInt16(inputBytes[1])
        Swift.print("inputValue: \(inputValue)")
        
        let outputBytes = inputValue.bytes
        
        XCTAssertEqual(inputBytes, outputBytes)
        let outputValue: UInt16 = (UInt16(outputBytes[0]) << 8) + UInt16(outputBytes[1])
        Swift.print("outputValue: \(outputValue)")
    }
    
    func testUInt32()
    {
        let inputBytes: [UInt8] = [123, 234, 111, 222]
        let inputValue: UInt32 = (UInt32(inputBytes[0]) << 24) + (UInt32(inputBytes[1]) << 16) + (UInt32(inputBytes[2]) << 8) + UInt32(inputBytes[3])
        Swift.print("inputValue: \(inputValue)")
        
        let outputBytes = inputValue.bytes
        
        XCTAssertEqual(inputBytes, outputBytes)
    }
}
