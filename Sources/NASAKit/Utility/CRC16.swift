//
//  CRC16.swift
//
//
//  Created by Bastian Rössler on 05.12.23.
//  Thanks to ivanesik, who created CrcSwift https://github.com/ivanesik/CrcSwift
//

import Foundation

struct CRC16
{
    static func calculate(_ data: [UInt8]) -> UInt16
    {
        let polynom: UInt16 = 0x1021
        var crc: UInt16 = 0
        
        for byte in data
        {
            crc = (UInt16(byte) << 8) ^ crc
            
            for _ in 0 ..< 8 {
                let check = crc & 0x8000
                crc = crc << 1
                
                if check != 0 {
                    crc = crc ^ polynom
                }
            }
        }
        
        return crc
    }
}


