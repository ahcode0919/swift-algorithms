//
//  ReverseWordsInSentenceTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 1/9/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class ReverseWordsInSentenceTests: XCTestCase {
    func testReverseWordsInSentence() {
        let sentence = "foo bar baz"
        let emptySentence = ""
        let word = "foo"
        XCTAssertEqual(ReverseWordsInSentence.reverse(sentence), "oof rab zab")
        XCTAssertEqual(ReverseWordsInSentence.reverse(emptySentence), "")
        XCTAssertEqual(ReverseWordsInSentence.reverse(word), "oof")
    }
}
