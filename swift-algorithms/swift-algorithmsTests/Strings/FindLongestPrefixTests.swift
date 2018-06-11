//
//  FindLongestPrefixTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 6/8/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class FindLongestPrefixTests: XCTestCase {
    func testFindLongestPrefix() {
        var testString = "tesx testxx testerx testing"
        var result = FindLongestPrefix.findLongestPrefix(testString)
        XCTAssertEqual(result, "tes")
        
        testString = ""
        result = FindLongestPrefix.findLongestPrefix(testString)
        XCTAssertEqual(result, "")
        
        testString = "testing testerx testxxx"
        result = FindLongestPrefix.findLongestPrefix(testString)
        XCTAssertEqual(result, "test")
        
        testString = "test test test"
        result = FindLongestPrefix.findLongestPrefix(testString)
        XCTAssertEqual(result, "test")
    }

    func testFindLongestPrefixPerformance() {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
