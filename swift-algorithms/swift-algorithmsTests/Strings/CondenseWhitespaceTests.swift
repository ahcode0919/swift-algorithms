//
//  CondenseWhitespaceTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class CondenseWhitespaceTests: XCTestCase {

    func testCondenseWhitespaceWithLoop() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithLoop(testString)
        XCTAssertEqual(result, " a b c d")
    }

    func testCondenseWhitespaceWithLoopPerf() {
        let testString = Helpers.generateRandomString(ofLength: 10000)
        self.measure {
            _ = CondenseWhitespace.condenseWhitespaceWithLoop(testString)
        }
    }

    func testCondenseWhitespaceWithRegex() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithRegex(testString)
        XCTAssertEqual(result, " a b c d")
    }
    
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
    
    func testCondenseWhitespaceWithSplitPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = CondenseWhitespace.condenseWhitespaceWithSplit(testString)
        }
    }
}
