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

    func testSameCharactersWithLoop() {
        XCTAssertTrue(SameCharacters.hasSameCharactersWithLoop("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharactersWithLoop("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithLoop("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithLoop("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithLoop("abc", in: "cbAa"))
    }
    
    func testSameCharactersWithLoopPerf() {
        let testString1 = Helpers.generateRandomString(ofLength: 10000)
        let testString2 = Helpers.generateRandomString(ofLength: 10000)
        self.measure {
            _ = SameCharacters.hasSameCharactersWithLoop(testString1, in: testString2)
        }
    }
    
    func testSameCharactersWithSort() {
        XCTAssertTrue(SameCharacters.hasSameCharactersWithSort("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharactersWithSort("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithSort("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithSort("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithSort("abc", in: "cbAa"))
    }
    
    func testSameCharactersSortPerf() {
        let testString1 = Helpers.generateRandomString(ofLength: 10000)
        let testString2 = Helpers.generateRandomString(ofLength: 10000)
        self.measure {
            _ = SameCharacters.hasSameCharactersWithSort(testString1, in: testString2)
        }
    }
    
    func testSameCharactersWithDictionary() {
        XCTAssertTrue(SameCharacters.hasSameCharactersWithDictionary("abca", in: "abca"))
        XCTAssertTrue(SameCharacters.hasSameCharactersWithDictionary("abc", in: "cba"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithDictionary("abc", in: "abca"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithDictionary("abc", in: "Abc"))
        XCTAssertFalse(SameCharacters.hasSameCharactersWithDictionary("abc", in: "cbAa"))
    }
    
    func testSameCharactersWithDictionaryPerf() {
        let testString1 = Helpers.generateRandomString(ofLength: 10000)
        let testString2 = Helpers.generateRandomString(ofLength: 10000)
        self.measure {
            _ = SameCharacters.hasSameCharactersWithDictionary(testString1, in: testString2)
        }
    }
}
