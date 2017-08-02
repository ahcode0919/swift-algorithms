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
    
    func testUniqueCharacters() {
        XCTAssert(UniqueCharacters.uniqueCharacters("No duplicates"))
        XCTAssert(UniqueCharacters.uniqueCharacters("abcdefghijklmnopqrstuvwxyz"))
        XCTAssert(UniqueCharacters.uniqueCharacters("AaBbCc"))
        XCTAssertFalse(UniqueCharacters.uniqueCharacters("Hello, world"))
    }
    
    func testUniqueCharactersPerf() {
        let string = Helpers.generateRandomString()
        self.measure {
            XCTAssertFalse(UniqueCharacters.uniqueCharacters(string))
        }
    }
    
    func testUniqueCharacters2() {
        XCTAssert(UniqueCharacters.uniqueCharacters2("No duplicates"))
        XCTAssert(UniqueCharacters.uniqueCharacters2("abcdefghijklmnopqrstuvwxyz"))
        XCTAssert(UniqueCharacters.uniqueCharacters2("AaBbCc"))
        XCTAssertFalse(UniqueCharacters.uniqueCharacters2("Hello, world"))
    }
    
    func testUniqueCharacters2Perf() {
        let string = Helpers.generateRandomString()
        self.measure {
            XCTAssertFalse(UniqueCharacters.uniqueCharacters2(string))
        }
    }
}
