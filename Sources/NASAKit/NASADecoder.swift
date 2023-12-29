//
//  NASADecoder.swift
//
//
//  Created by Bastian Rössler on 04.12.23.
//

import Foundation

public actor NASADecoder: Sendable
{
    public var enableDebugLogging: Bool
    
    private func log(_ text: String)
    {
        guard enableDebugLogging else { return }
        Swift.print("[\(Date())] NASADecoder: \(text)")
    }
    
    public init(enableDebugLogging: Bool = false)
    {
        self.enableDebugLogging = enableDebugLogging
    }
    
    private var buffer: [UInt8] = []
    private var previousDate: Date?
    
    /// Add new bytes to the decoder
    public func decodeBytes(_ bytes: [UInt8], date: Date)
    {
        let bytesToDecode = self.buffer + bytes
        
        //Swift.print("Bytes to Decode: \(bytesToDecode)")
        
        func handleNextIndex(nextIndex: Int)
        {
            guard nextIndex < bytesToDecode.count else {
                self.buffer = []
                self.previousDate = nil
                return
            }
            
            let nextDate: Date
            
            // check which timestamp is correct now
            if nextIndex < self.buffer.count
            {
                // nextIndex still points to the buffer
                nextDate = self.previousDate ?? date
            }
            else
            {
                // nextIndex already points to the new bytes
                nextDate = date
            }
            
            self.previousDate = nextDate
            self.buffer = Array(bytesToDecode[nextIndex...])
            
            self.decodeBytes([], date: date)
        }
        
        switch Packet.decodePacket(bytes: bytesToDecode, date: previousDate ?? date)
        {
        case .failure(let error):
            switch error
            {
            case .noBeginByte:
                // discard buffer
                self.log("NoBeginByte -> discarding buffer with \(bytesToDecode.count) bytes [\(bytesToDecode)]")
                
                self.buffer = []
                self.previousDate = nil
                return
            case .invalidPacketLength(let nextIndex):
                self.log("InvalidPacketLength -> Skipping to nextIndex \(nextIndex)")
                handleNextIndex(nextIndex: nextIndex)
            case .bufferNotLongEnough:
                self.buffer = bytesToDecode
                
                if self.previousDate == nil
                {
                    self.previousDate = date
                }
            case .invalidEndByte(let nextIndex):
                self.log("InvalidEndByte -> Skipping to nextIndex \(nextIndex)")
                handleNextIndex(nextIndex: nextIndex)
            case .invalidPacketError(let error, let nextIndex):
                self.log("InvalidPacketError: \(error) -> Skpping to nextIndex \(nextIndex)")
                handleNextIndex(nextIndex: nextIndex)
            }
        case .success((let packet, let nextIndex)):
            
            self.continuations.forEach { (key: UUID, value: AsyncStream<Packet>.Continuation) in
                value.yield(packet)
            }
            
            handleNextIndex(nextIndex: nextIndex)
        }
    }
    
    internal private(set) var continuations: [UUID: AsyncStream<Packet>.Continuation] = [:]
    
    private func addContinuation(id: UUID, continuation: AsyncStream<Packet>.Continuation)
    {
        self.continuations[id] = continuation
    }
    
    private func removeContinuation(id: UUID)
    {
        self.continuations.removeValue(forKey: id)
    }
    
    /// The AsyncSequence over which the decoded packets are published
    public var packets: AsyncStream<Packet> {
        
        var aId: UUID?
        var aContinuation: AsyncStream<Packet>.Continuation?
        
        let stream = AsyncStream<Packet> { [weak self] continuation in
            
            let id = UUID()
            
            aId = id
            aContinuation = continuation
             
            continuation.onTermination = { [weak self] _ in
                Task { [weak self] in
                    await self?.removeContinuation(id: id)
                }
            }
        }
        
        guard let aContinuation, let aId else {
            // AsyncStream initialization is always run immediately
            // Therefore aContinuation and aId will never be nil
            fatalError()
        }
        
        self.addContinuation(id: aId, continuation: aContinuation)
        
        return stream
    }
    
    deinit {
        self.continuations.forEach { (key: UUID, value: AsyncStream<Packet>.Continuation) in
            value.finish()
        }
    }
    
}
