//
//  SameCharactersTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class SameCharactersTests: XCTestCase {

    func testSameCharacters() {
        XCTAssertTrue(SameCharacters.hasSameCharacters("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharacters("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharacters("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharacters("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharacters("abc", in: "cbAa"))
    }
    
    func testSameCharactersPerf() {
        let testString1 = Helpers.generateRandomString(ofLength: 100000)
        let testString2 = Helpers.generateRandomString(ofLength: 100000)
        
        self.measure {
            _ = SameCharacters.hasSameCharacters(testString1, in: testString2)
        }
    }
    
    func testSameCharacters2() {
        XCTAssertTrue(SameCharacters.hasSameCharacters2("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharacters2("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "cbAa"))
    }
    
    func testSameCharactersPerf2() {
        let testString1 = Helpers.generateRandomString(ofLength: 100000)
        let testString2 = Helpers.generateRandomString(ofLength: 100000)
        
        self.measure {
            _ = SameCharacters.hasSameCharacters2(testString1, in: testString2)
        }
    }
    
    func testSameCharacters3() {
        XCTAssertTrue(SameCharacters.hasSameCharacters2("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharacters2("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharacters2("abc", in: "cbAa"))
    }
    
    func testSameCharactersPerf3() {
        let testString1 = Helpers.generateRandomString(ofLength: 100000)
        let testString2 = Helpers.generateRandomString(ofLength: 100000)
        
        self.measure {
            _ = SameCharacters.hasSameCharacters2(testString1, in: testString2)
        }
    }
}
