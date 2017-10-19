//
//  ArrayRemoveDuplicatesTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class ArrayRemoveDuplicatesTests: XCTestCase {
    func testRemoveDuplicatesWithNSOrderedSet() {
        let testString = Helpers.generateRandomString(ofLength: 50)
        let array = Array(testString.characters)
        let uniqueArray = ArrayRemoveDuplicates.removeDuplicatesWithNSOrderedSet(array)
        
        XCTAssertEqual(Set(uniqueArray).count, uniqueArray.count)
    }
    
    /// Time ~ .050 sec
    func testRemoveDuplicatesWithNSOrderedSetPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        let array = Array(testString.characters)
        self.measure {
            _ = ArrayRemoveDuplicates.removeDuplicatesWithNSOrderedSet(array)
        }
    }

    func testRemoveDuplicatesWithReduce() {
        let testString = Helpers.generateRandomString(ofLength: 50)
        let array = Array(testString.characters)
        let uniqueArray = ArrayRemoveDuplicates.removeDuplicatesWithReduce(array)
        
        XCTAssertEqual(Set(uniqueArray).count, uniqueArray.count)
    }
    
    /// Time ~ .700 sec
    func testRemoveDuplicatesWithReducePerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        let array = Array(testString.characters)
        self.measure {
            _ = ArrayRemoveDuplicates.removeDuplicatesWithReduce(array)
        }
    }
}