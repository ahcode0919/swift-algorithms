//
//  CondenseWhitespaceTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class CondenseWhitespaceTests: XCTestCase {

    func testCondenseWhitespaceWithLoop() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithLoop(testString)
        XCTAssertEqual(result, " a b c d")
    }

    // Time ~ .349 sec
    func testCondenseWhitespaceWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = CondenseWhitespace.condenseWhitespaceWithLoop(testString)
        }
    }

    func testCondenseWhitespaceWithRegex() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithRegex(testString)
        XCTAssertEqual(result, " a b c d")
    }
    
    // Time ~ .020 sec
    func testCondenseWhitespaceWithRegexPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = CondenseWhitespace.condenseWhitespaceWithRegex(testString)
        }
    }
    
    func testCondenseWhitespaceWithSplit() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithSplit(testString)
        XCTAssertEqual(result, " a b c d")
    }
    
    // Time ~ .088 sec
    func testCondenseWhitespaceWithSplitPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = CondenseWhitespace.condenseWhitespaceWithSplit(testString)
        }
    }
}
