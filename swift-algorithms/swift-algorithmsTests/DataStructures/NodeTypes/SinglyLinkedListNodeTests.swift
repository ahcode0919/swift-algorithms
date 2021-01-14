//
//  SinglyLinkedListNodeTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 1/12/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import XCTest

class SinglyLinkedListNodeTests: XCTestCase {
    func testSinglyLinkedListNode() {
        let node = SinglyLinkedListNode(value: 0)
        XCTAssertNil(node.next)
        XCTAssertEqual(node.value, 0)
        
        node.next = SinglyLinkedListNode(value: 1)
        XCTAssertEqual(node.next?.value, 1)
    }
}
