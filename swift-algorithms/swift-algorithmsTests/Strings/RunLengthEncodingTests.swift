//
//  RunLengthEncodingTests.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/25/20.
//  Copyright © 2020 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class RunLengthEncodingTests: XCTestCase {
    
    func testRunLengthEncoding() {
        XCTAssert(RunLengthEncoding.runLengthEncoding("aaabbcddd") ==  "a3b2cd3")
        XCTAssert(RunLengthEncoding.runLengthEncoding("aaabbccd") ==  "a3b2c2d")
        XCTAssert(RunLengthEncoding.runLengthEncoding("abc") ==  "abc")
        XCTAssert(RunLengthEncoding.runLengthEncoding("") ==  "")
    }
}
