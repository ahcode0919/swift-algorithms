//
//  PangramTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 5/17/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class PangramTests: XCTestCase {
    func testIsPangramWithSet() {
        let testString = "abcdefghijklmnopqrstuvwxyz"
        XCTAssertTrue(Pangram.isPangramWithSet(testString))
    }
    
    func testIsPangramWithSetPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Pangram.isPangramWithSet(testString)
        }
    }
    
    func testIsPangramWithLoop() {
        let testString = "abcdefghijklmnopqrstuvwxyz"
        XCTAssertTrue(Pangram.isPangramWithLoop(testString))
    }
    
    func testIsPangramWithLoopPerf() {
        let testString = Helpers.generateRandomString()
        self.measure {
            _ = Pangram.isPangramWithLoop(testString)
        }
    }
}
