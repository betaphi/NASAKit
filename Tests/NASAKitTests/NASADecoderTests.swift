import XCTest
@testable import NASAKit

@MainActor
final class NASADecoderTests: XCTestCase
{
    var decoder: NASADecoder!
    var listenTask: Task<Void, Never>?
    var decodedPacketCount: Int = 0
    var expectedPacketCount: Int = 0
    
    var expectation: XCTestExpectation?
    
    override func setUp()
    {
        self.decodedPacketCount = 0
        
        self.decoder = NASADecoder()
        self.listenTask = Task {
            for await packet in await self.decoder.packets
            {
                self.decodedPacketCount += 1
                
                if let value = packet.messages.getVAR_out_control_order_cfreq_comp1()
                {
                    Swift.print("Order cfreq: \(value)")
                }
                if let value = packet.messages.getVAR_out_sensor_airout()
                {
                    Swift.print("Outdoor Temperature: \(value)")
                }
                
                //Swift.print("Decoded \(self.decodedPacketCount) Packets")
                
                if self.decodedPacketCount == self.expectedPacketCount
                {
                    self.expectation?.fulfill()
                    return
                }
            }
        }
        
    }
    
    override func tearDown()
    {
        self.listenTask?.cancel()
        self.listenTask = nil
        self.decoder = nil
    }
    
    func decode(timedBytes: [TimedByte], expectedPackets: Int, sliceSizeMin: Int, sliceSizeMax: Int) async throws
    {
        self.expectation = XCTestExpectation(description: "Decode Packets")
        self.expectedPacketCount = expectedPackets
        
        var currentIndex = 0
        
        let sliceSize = Int.random(in: sliceSizeMin...sliceSizeMax)
        
        while currentIndex+sliceSize < timedBytes.count
        {
            let slice = Array(timedBytes[currentIndex ..< (currentIndex + sliceSize)])
            currentIndex += sliceSize
            
            let raw = slice.map { $0.value }
            
            await self.decoder.decodeBytes(raw, date: slice.first!.date)
        }
        
        await fulfillment(of: [self.expectation!], timeout: 2)
    }
    
    func testOne() async throws
    {
        let url = Bundle.module.url(forResource: "One", withExtension: "json", subdirectory: "Resources")!
        let data = try Data(contentsOf: url)
        
        let timedBytes = try JSONDecoder().decode([TimedByte].self, from: data)
        
        try await self.decode(timedBytes: timedBytes, expectedPackets: 1338, sliceSizeMin: 3, sliceSizeMax: 255)
    }
    
    func testTwo() async throws
    {
        let url = Bundle.module.url(forResource: "Two", withExtension: "json", subdirectory: "Resources")!
        let data = try Data(contentsOf: url)
        
        let timedBytes = try JSONDecoder().decode([TimedByte].self, from: data)
        
        try await self.decode(timedBytes: timedBytes, expectedPackets: 11653, sliceSizeMin: 127, sliceSizeMax: 511)
    }
    
    func testTermination() async throws
    {
        let countBefore = await self.decoder.continuations.count
        XCTAssertEqual(countBefore, 1)
        
        let url = Bundle.module.url(forResource: "Two", withExtension: "json", subdirectory: "Resources")!
        let data = try Data(contentsOf: url)
        
        let timedBytes = try JSONDecoder().decode([TimedByte].self, from: data)
        
        try await self.decode(
            timedBytes: Array(timedBytes[0..<1024]),
            expectedPackets: 16,
            sliceSizeMin: 1,
            sliceSizeMax: 1
        )
        
        self.listenTask?.cancel()
        
        let countAfter = await self.decoder.continuations.count
        XCTAssertEqual(countAfter, 0)
    }
    
    func testDeinit() async throws
    {
        var decoder: NASADecoder! = NASADecoder()
        
        let expectation = XCTestExpectation()
        
        let packets = await decoder.packets
        
        Task {
            for await _ in packets
            {
                
            }
            
            expectation.fulfill()
        }

        let count = await decoder.continuations.count
        XCTAssertEqual(count, 1)
        
        decoder = nil
        
        await fulfillment(of: [expectation])
    }
    
    func cleanSerialNumbers() async throws
    {
        
    }
}

struct TimedByte: Decodable
{
    var date: Date
    var value: UInt8
}
