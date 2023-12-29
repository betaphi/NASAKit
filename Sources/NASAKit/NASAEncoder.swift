//
//  NASAEncoder.swift
//
//
//  Created by Bastian Rössler on 29.12.23.
//

import Foundation

public actor NASAEncoder: Sendable
{
    public init() { }
    
    private var continuation: AsyncStream<[UInt8]>.Continuation?
    
    private func removeContinuation()
    {
        self.continuation = nil
    }
    
    /// Encode a NASA Packet to bytes
    /// - Parameter packet: The NASA Packet to encode
    /// - Returns: NASA Byte Stream
    @discardableResult
    nonisolated func encode(_ packet: Packet) throws -> [UInt8]
    {
        return try packet.encode()
    }
    
    /// The NASA byte stream to write to a serial port
    public var bytes: AsyncStream<[UInt8]> {
        
        self.continuation?.finish()
        self.continuation = nil
        
        var aContinuation: AsyncStream<[UInt8]>.Continuation?
        
        let bytes = AsyncStream<[UInt8]> { continuation in
            
            continuation.onTermination = { [weak self] _ in
                Task { [weak self] in
                    await self?.removeContinuation()
                }
            }
            
            aContinuation = continuation
        }
        
        self.continuation = aContinuation
        
        return bytes
    }
}
