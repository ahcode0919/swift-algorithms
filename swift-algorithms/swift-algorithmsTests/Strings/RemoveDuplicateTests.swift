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
    func testRemoveDuplicates() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicates(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates(from: "Mississippi"), "Misp")
    }

    func testRemoveDuplicatesPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicates(from: testString)
        }
    }

    func testRemoveDuplicates2() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicates2(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates2(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates2(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesPerf2() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicates2(from: testString)
        }
    }
    
    func testRemoveDuplicates3() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicates3(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates3(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates3(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesPerf3() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicates3(from: testString)
        }
    }
    
    func testRemoveDuplicates4() {
        XCTAssertEqual(RemoveDuplicates.removeDuplicates4(from: "Wombat"), "Wombat")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates4(from: "hello"), "helo")
        XCTAssertEqual(RemoveDuplicates.removeDuplicates4(from: "Mississippi"), "Misp")
    }
    
    func testRemoveDuplicatesPerf4() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = RemoveDuplicates.removeDuplicates4(from: testString)
        }
    }
}
