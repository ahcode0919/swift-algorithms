//
//  PalindromeTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class PalindromeTests: XCTestCase {
    func testPalindromeWithReverse() {
        XCTAssertTrue(Palindrome.isPalindromeWithReverse("rotAtoR"))
        XCTAssertTrue(Palindrome.isPalindromeWithReverse("aba"))
        XCTAssertTrue(Palindrome.isPalindromeWithReverse("aabbaa"))
        XCTAssertTrue(Palindrome.isPalindromeWithReverse("AAAAAA"))
        XCTAssertFalse(Palindrome.isPalindromeWithReverse("Hello"))
    }
    
    func testPalindromeWithReversePerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            XCTAssertTrue(Palindrome.isPalindromeWithReverse("rotAtoR"))
            XCTAssertFalse(Palindrome.isPalindromeWithReverse(testString))
        }
    }
    
    func testPalindromeWithArray() {
        XCTAssertTrue(Palindrome.isPalindromeWithArray("rotAtoR"))
        XCTAssertTrue(Palindrome.isPalindromeWithArray("aba"))
        XCTAssertTrue(Palindrome.isPalindromeWithArray("aabbaa"))
        XCTAssertTrue(Palindrome.isPalindromeWithArray("AAAAAA"))
        XCTAssertFalse(Palindrome.isPalindromeWithArray("Hello"))
    }
    
    func testPalindromeWithArrayPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            XCTAssertTrue(Palindrome.isPalindromeWithArray("rotAtoR"))
            XCTAssertFalse(Palindrome.isPalindromeWithArray(testString))
        }
    }
}
