//
//  SinglyLinkedListTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 1/12/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import XCTest

class SinglyLinkedListTests: XCTestCase {
    var linkedList: SinglyLinkedList<Int>!
    var nodes: SinglyLinkedListNode<Int>!
    
    override func setUp() {
        linkedList = SinglyLinkedList()
        nodes = SinglyLinkedListNode(value: 1)
        nodes.next = SinglyLinkedListNode(value: 2)
        nodes.next?.next = SinglyLinkedListNode(value: 3)
        linkedList.append(nodes)
    }

    func testSinglyLinkedList() {
        let list = SinglyLinkedList<Int>()
        XCTAssertNil(list.head)
        XCTAssertEqual(list.length, 0)
        XCTAssertEqual(list.values(), [])
    }

    func testAppend() {
        var list = SinglyLinkedList<Int>()
        let node = SinglyLinkedListNode(value: 0)
        list.append(node)
        XCTAssertEqual(list.length, 1)
        XCTAssert(list.head === node)
        
        list = SinglyLinkedList<Int>()
        list.append(nodes)
        XCTAssertEqual(list.values(), [1, 2, 3])
        XCTAssertEqual(list.length, 3 )
    }
    
    func testAppendLeft() {
        linkedList.appendLeft(SinglyLinkedListNode(value: 0))
        XCTAssertEqual(linkedList.length, 4)
        XCTAssertEqual(linkedList.values(), [0, 1, 2, 3])
    }
    
    func testLength() {
        XCTAssertEqual(SinglyLinkedList<Int>().length, 0)
        XCTAssertEqual(linkedList.length, 3)
    }
    
    func testNodeAtIndex() {
        XCTAssertEqual(linkedList.node(atIndex: 0)?.value, 1)
        XCTAssertEqual(linkedList.node(atIndex: 1)?.value, 2)
    }
    
    func testPop() {
        let node = linkedList.pop()
        XCTAssertEqual(node?.value, 3)
        
        let list = SinglyLinkedList<Int>()
        XCTAssertNil(list.pop())
    }
    
    func testPopLeft() {
        let node = linkedList.popLeft()
        XCTAssertEqual(node?.value, 1)
        
        let list = SinglyLinkedList<Int>()
        XCTAssertNil(list.popLeft())
    }
    
    func testRemoveAtIndex() {
        var node = linkedList.remove(atIndex: 0)
        XCTAssertEqual(node?.value, 1)
        
        node = linkedList.remove(atIndex: 1)
        XCTAssertEqual(node?.value, 3)
    }
    
    func testValues() {
        XCTAssertEqual(linkedList.values(), [1, 2, 3])
    }
}
