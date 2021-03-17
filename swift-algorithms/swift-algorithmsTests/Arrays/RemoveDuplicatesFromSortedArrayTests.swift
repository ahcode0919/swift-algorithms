//
//  RemoveDuplicatesTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 3/16/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import XCTest

class RemoveDuplicatesFromSortedArrayTests: XCTestCase {

    func testRemoveDuplicatesFromSortedArray() {
        var array = [1, 2, 3]
        RemoveDuplicatesFromSortedArray.removeDuplicates(array: &array)
        XCTAssertEqual(array, [1, 2, 3])
        
        array = [1, 1, 2, 2, 3, 4, 4]
        RemoveDuplicatesFromSortedArray.removeDuplicates(array: &array)
        XCTAssertEqual(array, [1, 2, 3, 4])
    }
}
