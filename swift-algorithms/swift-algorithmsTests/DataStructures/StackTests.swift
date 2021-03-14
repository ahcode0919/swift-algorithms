//
//  StackTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 3/14/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import XCTest

class StackTests: XCTestCase {
    
    var stack: Stack<Int>!

    override func setUpWithError() throws {
        stack = Stack<Int>()
    }
    
    func testInit() {
        XCTAssertTrue(stack.empty())
        XCTAssertEqual(stack.size(), 0)
        XCTAssertNil(stack.pop())
    }
    
    func testEmpty() {
        XCTAssertTrue(stack.empty())
        
        stack.push(value: 1)
        XCTAssertFalse(stack.empty())
    }

    func testPop() {
        stack.push(value: 1)
        stack.push(value: 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertNil(stack.pop())
    }
    
    func testPush() {
        stack.push(value: 1)
        XCTAssertEqual(stack.size(), 1)
        XCTAssertEqual(stack.pop(), 1)
    }
    
    func testSize() {
        XCTAssertEqual(stack.size(), 0)
        
        stack.push(value: 1)
        stack.push(value: 2)
        XCTAssertEqual(stack.size(), 2)
    }
}
