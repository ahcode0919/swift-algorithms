//
//  OccurrancesOfCharacterTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation
import XCTest

class OccurrencesOfCharacterTests: XCTestCase {
    
    func testCountCharactersWithFilter() {
        XCTAssertTrue(OccurrencesOfCharacter.countOccurancesWithFilter("C", in: "Cash") == 1)
        XCTAssertTrue(OccurrencesOfCharacter.countOccurancesWithFilter("C", in: "Test") == 0)
        XCTAssertTrue(OccurrencesOfCharacter.countOccurancesWithFilter("c", in: "Cash") == 0)
        XCTAssertTrue(OccurrencesOfCharacter.countOccurancesWithFilter("a", in: "") == 0)
    }
    
    // Time ~ .030 sec
    func testCountCharactersWithFilterPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = OccurrencesOfCharacter.countOccurancesWithFilter("a", in: testString)
        }
    }
    
    func testOccurrencesOfCharacterWithLoop() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.countOccurrencesWithLoop("b", in: testString)
        XCTAssertEqual(occurrences, 4)
    }
    
    /// Time ~ 0.140 sec
    func testOccurrencesOfCharacterWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = OccurrencesOfCharacter.countOccurrencesWithLoop("b", in: testString)
        }
    }
    
    func testOccurrencesOfCharacterWithReduce() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.countOccurrencesWithReduce("b", in: testString)
        XCTAssertEqual(occurrences, 4)
    }
    
    /// Time ~ 0.190 sec
    func testOccurrencesOfCharacterWithReducePerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = OccurrencesOfCharacter.countOccurrencesWithReduce("b", in: testString)
        }
    }
}
