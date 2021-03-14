//
//  Stack.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 3/14/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

class Stack<T> {
    private var stack: [T] = []
    
    init() {}
    
    func empty() -> Bool {
        return self.size() == 0
    }
    
    func pop() -> T? {
        return self.stack.popLast()
    }
    
    func push(value: T) {
        self.stack.append(value)
    }
    
    func size() -> Int {
        return self.stack.count
    }
}
