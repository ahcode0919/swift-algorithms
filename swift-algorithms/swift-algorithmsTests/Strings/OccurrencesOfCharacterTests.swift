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
    
    func testOccurrencesOfCharacterWithLoop() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.occurrencesOfWithLoop("b", in: testString)
        XCTAssertEqual(occurrences, 4)
    }
    
    /// Time ~ 0.140 sec
    func testOccurrencesOfCharacterWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = OccurrencesOfCharacter.occurrencesOfWithLoop("b", in: testString)
        }
    }
    
    func testOccurrencesOfCharacterWithReduce() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.occurrencesOfWithReduce("b", in: testString)
        XCTAssertEqual(occurrences, 4)
    }
    
    /// Time ~ 0.190 sec
    func testOccurrencesOfCharacterWithReducePerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = OccurrencesOfCharacter.occurrencesOfWithReduce("b", in: testString)
        }
    }
}
