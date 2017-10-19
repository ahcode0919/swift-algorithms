//
//  ContainsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class ContainsTests: XCTestCase {
    
    func testContainsWithRange() {
        XCTAssertTrue(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "Test"))
        XCTAssertTrue(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "TEST"))
        XCTAssertFalse(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "False"))
    }
    
    // Time ~ .035 sec
    func testContainsWithRangePerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Contains.containsIgnoreCaseWithRange(testString, contains: "@")
        }
    }
    
    func testContainsWithLoop() {
        XCTAssertTrue(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "Test"))
        XCTAssertTrue(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "TEST"))
        XCTAssertFalse(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "False"))
    }
    
    // Time ~ 0.115 sec
    func testContainsWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Contains.containsIgnoreCaseWithLoop(testString, contains: "@")
        }
    }
}
