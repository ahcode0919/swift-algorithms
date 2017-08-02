//
//  PalindromeTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation
import XCTest
@testable import swift_algorithms

class PalindromeTests: XCTestCase {
    func testPalindrome() {
        XCTAssertTrue(Palindrome.isPalindrome("rotAtoR"))
        XCTAssertTrue(Palindrome.isPalindrome("aba"))
        XCTAssertTrue(Palindrome.isPalindrome("aabbaa"))
        XCTAssertTrue(Palindrome.isPalindrome("AAAAAA"))
        XCTAssertFalse(Palindrome.isPalindrome("Hello"))
    }
    
    func testPalindromePerf() {
        let testString = Helpers.generateRandomString()
        
        self.measure {
            XCTAssertTrue(Palindrome.isPalindrome("rotAtoR"))
            XCTAssertFalse(Palindrome.isPalindrome(testString))
        }
    }
    
    func testPalindrome2() {
        XCTAssertTrue(Palindrome.isPalindrome2("rotAtoR"))
        XCTAssertTrue(Palindrome.isPalindrome2("aba"))
        XCTAssertTrue(Palindrome.isPalindrome("aabbaa"))
        XCTAssertTrue(Palindrome.isPalindrome2("AAAAAA"))
        XCTAssertFalse(Palindrome.isPalindrome2("Hello"))

    }
    
    func testPalindrome2Perf() {
        let testString = Helpers.generateRandomString()

        self.measure {
            XCTAssertTrue(Palindrome.isPalindrome("rotAtoR"))
            XCTAssertFalse(Palindrome.isPalindrome2(testString))
        }
    }
}
