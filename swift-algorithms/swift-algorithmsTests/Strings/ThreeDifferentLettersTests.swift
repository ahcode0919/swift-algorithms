//
//  ThreeDifferentLettersTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 6/7/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation
import XCTest
@testable import swift_algorithms

class ThreeDifferentLettersTests: XCTestCase {
    func testThreeDifferentLetters() {
        var string1 = "Foobar"
        var string2 = "Foobar"
        XCTAssertTrue(ThreeDifferentLetters.threeDifferentLetters(s1: string1, s2: string2))
        
        string1 = "foobar"
        string2 = "FcoBcr"
        XCTAssertFalse(ThreeDifferentLetters.threeDifferentLetters(s1: string1, s2: string2))
        
        string1 = "foobar"
        string2 = "fooba"
        XCTAssertFalse(ThreeDifferentLetters.threeDifferentLetters(s1: string1, s2: string2))
    }
    
    func testThreeDifferentLettersPerf() {
        let testString1 = Helpers.generateRandomString()
        let testString2 = testString1
        
        self.measure {
            XCTAssertTrue(ThreeDifferentLetters.threeDifferentLetters(s1: testString1, s2: testString2))
        }
    }
}
