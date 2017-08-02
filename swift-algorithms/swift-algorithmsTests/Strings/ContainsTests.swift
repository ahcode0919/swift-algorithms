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
    
    func testContains() {
        XCTAssertTrue(Contains.containsIgnoreCase("Test, Phrase", contains: "Test"))
        XCTAssertTrue(Contains.containsIgnoreCase("Test, Phrase", contains: "TEST"))
        XCTAssertFalse(Contains.containsIgnoreCase("Test, Phrase", contains: "False"))
    }

    func testContainsPerf() {
        let testString = Helpers.generateRandomString()

        self.measure {
            _ = Contains.containsIgnoreCase(testString, contains: "@")
        }
    }
    
    func testContains2() {
        XCTAssertTrue(Contains.containsIgnoreCase2("Test, Phrase", contains: "Test"))
        XCTAssertTrue(Contains.containsIgnoreCase2("Test, Phrase", contains: "TEST"))
        XCTAssertFalse(Contains.containsIgnoreCase2("Test, Phrase", contains: "False"))
    }
    
    func testContains2Perf() {
        let testString = Helpers.generateRandomString()

        self.measure {
            _ = Contains.containsIgnoreCase2(testString, contains: "@")
        }
    }
}
