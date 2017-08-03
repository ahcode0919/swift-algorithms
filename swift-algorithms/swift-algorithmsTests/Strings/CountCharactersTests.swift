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
    
    func testCountCharacters() {
        XCTAssertTrue(CountCharacters.countOccurancesof("C", in: "Cash") == 1)
        XCTAssertTrue(CountCharacters.countOccurancesof("C", in: "Test") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesof("c", in: "Cash") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesof("a", in: "") == 0)
    }

    func testCountCharactersPerf() {
        let testString = Helpers.generateRandomString(ofLength: 100000)

        self.measure {
            _ = CountCharacters.countOccurancesof("a", in: testString)
        }
    }
    
    func testCountCharacters2() {
        XCTAssertTrue(CountCharacters.countOccurancesof2("C", in: "Cash") == 1)
        XCTAssertTrue(CountCharacters.countOccurancesof2("C", in: "Test") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesof2("c", in: "Cash") == 0)
        XCTAssertTrue(CountCharacters.countOccurancesof2("a", in: "") == 0)
    }
    
    func testCountCharactersPerf2() {
        let testString = Helpers.generateRandomString(ofLength: 100000)
        
        self.measure {
            _ = CountCharacters.countOccurancesof2("a", in: testString)
        }
    }
}
