//
//  FirstNotRepeatingCharacterTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 7/10/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class FirstNotRepeatingCharacterTests: XCTestCase {
    func testFirstWithDictionary() {
        let input = "aaccbbdee"
        var result = FirstNotRepeatingCharacter.firstWithDictionary(input)
        XCTAssertEqual(result, "d")
        
        result = FirstNotRepeatingCharacter.firstWithDictionary("aa")
        XCTAssertEqual(result, "_")
    }
}
