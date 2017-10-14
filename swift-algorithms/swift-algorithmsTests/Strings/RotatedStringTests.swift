//
//  RotatedStringTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 10/14/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest

class RotatedStringTests: XCTestCase {

    func testIsRotatedStringWithAddition() {
        let original = "Swift"
        let rotated = "ftSwi"
        let notRotated = "tfSwi"
        XCTAssertTrue(RotatedString.isRotatedStringWithAddition(original, rotated: rotated))
        XCTAssertFalse(RotatedString.isRotatedStringWithAddition(original, rotated: notRotated))
    }
    
    /// Time ~ .001 sec
    func testIsRotatedStringWithAdditionPerf() {
        let original = Helpers.generateRandomString(ofLength: 10000)
        var rotated = original
        rotated.insert(rotated.first!, at: rotated.endIndex)
        rotated = String(rotated.dropFirst())
        
        self.measure {
            XCTAssertTrue(RotatedString.isRotatedStringWithAddition(original, rotated: rotated))
        }
    }
    
    func testIsRotatedStringWithLoop() {
        let original = "Swift"
        let rotated = "ftSwi"
        let notRotated = "tfSwi"
        XCTAssertTrue(RotatedString.isRotatedStringWithLoop(original, rotated: rotated))
        XCTAssertFalse(RotatedString.isRotatedStringWithLoop(original, rotated: notRotated))
    }
    
    /// Time ~ .300 sec
    func testIsRotatedStringWithLoopPerf() {
        let original = Helpers.generateRandomString(ofLength: 10000)
        var rotated = original
        rotated.insert(rotated.first!, at: rotated.endIndex)
        rotated = String(rotated.dropFirst())
        
        self.measure {
            XCTAssertTrue(RotatedString.isRotatedStringWithLoop(original, rotated: rotated))
        }
    }
}
