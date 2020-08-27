//
//  ArrayFirstDuplicateTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 7/10/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class ArrayFirstDuplicateTests: XCTestCase {
    func testFirstDuplicate() {
        let numbers  = [1, 2, 3, 4, 3, 5]
        XCTAssertEqual(4, ArrayFirstDuplicate.firstDuplicate(numbers))
        
        XCTAssertNil(ArrayFirstDuplicate.firstDuplicate([]))
        XCTAssertNil(ArrayFirstDuplicate.firstDuplicate([1, 2]))
    }
}
