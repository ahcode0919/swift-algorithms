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
        XCTAssertFalse(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "False"))
    }
    
    // Time ~ .016 sec
    func testContainsWithRangePerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Contains.containsIgnoreCaseWithRange(testString, contains: "@")
        }
    }
    
    func testContainsWithLoop() {
        XCTAssertTrue(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "Test"))
        XCTAssertFalse(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "False"))
    }
    
    // Time ~ 0.091 sec
    func testContainsWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Contains.containsIgnoreCaseWithLoop(testString, contains: "@")
        }
    }
    
    func testContainsWithStringAPI() {
        XCTAssertTrue(Contains.containsWithStringAPI("Test, Phrase", contains: "Test"))
        XCTAssertFalse(Contains.containsWithStringAPI("Test, Phrase", contains: "False"))
    }
    
    // Time ~ 0.020
    func testContainsWithStringAPIPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Contains.containsWithStringAPI(testString, contains: "@")
        }
    }
}
