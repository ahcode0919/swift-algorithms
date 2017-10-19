//
//  CountCharactersTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class CountCharactersTests: XCTestCase {
    
    func testCountCharactersWithFilter() {
        XCTAssertTrue(CountCharacters.countOccurancesOfWithFilter("C", in: "Cash") == 1)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithFilter("C", in: "Test") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithFilter("c", in: "Cash") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithFilter("a", in: "") == 0)
    }

    // Time ~ .030 sec
    func testCountCharactersWithFilterPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = CountCharacters.countOccurancesOfWithFilter("a", in: testString)
        }
    }
    
    func testCountCharactersWithLoop() {
        XCTAssertTrue(CountCharacters.countOccurancesOfWithLoop("C", in: "Cash") == 1)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithLoop("C", in: "Test") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithLoop("c", in: "Cash") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesOfWithLoop("a", in: "") == 0)
    }
    
    // Time ~ .015 sec
    func testCountCharactersWithLoopPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        self.measure {
            _ = CountCharacters.countOccurancesOfWithLoop("a", in: testString)
        }
    }
}
