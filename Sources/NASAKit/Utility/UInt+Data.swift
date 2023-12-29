//
//  UInt16+Data.swift
//
//
//  Created by Bastian Rössler on 29.12.23.
//

import Foundation

extension UInt16
{
    var data: Data {
        withUnsafeBytes(of: self) { Data($0) }
    }
    
    var bytes: [UInt8] {
        [UInt8](self.data).reversed()
    }
}

extension UInt32
{
    var data: Data {
        withUnsafeBytes(of: self) { Data($0) }
    }
    
    var bytes: [UInt8] {
        [UInt8](self.data).reversed()
    }
}
