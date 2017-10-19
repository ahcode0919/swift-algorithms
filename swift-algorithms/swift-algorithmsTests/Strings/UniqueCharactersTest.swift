//
//  swift_algorithmsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/1/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class UniqueCharactersTest: XCTestCase {
    
    func testUniqueCharactersWithSet() {
        XCTAssert(UniqueCharacters.uniqueCharactersWithSet("No duplicates"))
        XCTAssert(UniqueCharacters.uniqueCharactersWithSet("abcdefghijklmnopqrstuvwxyz"))
        XCTAssert(UniqueCharacters.uniqueCharactersWithSet("AaBbCc"))
        XCTAssertFalse(UniqueCharacters.uniqueCharactersWithSet("Hello, world"))
    }
    
    func testUniqueCharactersWithSetPerf() {
        let string = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            XCTAssertFalse(UniqueCharacters.uniqueCharactersWithSet(string))
        }
    }
    
    func testUniqueCharactersWithLoop() {
        XCTAssert(UniqueCharacters.uniqueCharactersWithLoop("No duplicates"))
        XCTAssert(UniqueCharacters.uniqueCharactersWithLoop("abcdefghijklmnopqrstuvwxyz"))
        XCTAssert(UniqueCharacters.uniqueCharactersWithLoop("AaBbCc"))
        XCTAssertFalse(UniqueCharacters.uniqueCharactersWithLoop("Hello, world"))
    }
    
    func testUniqueCharactersWithLoopPerf() {
        let string = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            XCTAssertFalse(UniqueCharacters.uniqueCharactersWithLoop(string))
        }
    }
}
