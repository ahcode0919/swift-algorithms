//
//  RemoveDuplicateCharsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class RemoveDuplicatesTests: XCTestCase {
    func testRemoveDuplicatesWithNSOrderedSet() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "Mississippi"), "Misp")
    }

    func testRemoveDuplicatesWithNSOrderedSetPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: testString)
        }
    }

    func testRemoveDuplicatesWithNSOrderedSetAndFilter() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesWithNSOrderedSetAndFilterPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: testString)
        }
    }
    
    func testRemoveDuplicatesWithFilter() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithFilter(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithFilter(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithFilter(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesWithFilterPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicatesWithFilter(from: testString)
        }
    }
    
    func testRemoveDuplicatesWithDictionaryAndFilter() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesWithDictionaryAndFilterPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: testString)
        }
    }
}
