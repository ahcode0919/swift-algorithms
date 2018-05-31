//
//  VowelsAndConsonantsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 5/17/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class VowelsAndConsonantsTests: XCTestCase {
    
    func testVowelsAndConsonantsForEach() {
        let test = "Mississippi$^#$@"
        let result = VowelsAndConsonants.vowelsAndConsonantsForEach(test)
        XCTAssertEqual(result.vowels, 4)
        XCTAssertEqual(result.consonants, 7)
    }
    
    func testVowelsAndConsonantsForEachPerf() {
        let test = Helpers.generateRandomString()
        self.measure {
            _ = VowelsAndConsonants.vowelsAndConsonantsForEach(test)
        }
    }
}
