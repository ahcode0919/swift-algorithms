//
//  SinglyLinkedList.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 1/10/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import Foundation

class SinglyLinkedList<T> {
    var head: SinglyLinkedListNode<T>?
    var length: Int {
        get {
            var count = 0
            var currentNode = self.head
            
            while let node = currentNode {
                currentNode = node.next
                count += 1
            }
            return count
        }
    }
    
    init() { }
    
    init(node: SinglyLinkedListNode<T>) {
        self.head = node
    }
    
    func append(_ node: SinglyLinkedListNode<T>) {
        guard var currentNode = self.head else {
            self.head = node
            return
        }
        while let nextNode = currentNode.next {
            currentNode = nextNode
        }
        currentNode.next = node
    }
    
    func appendLeft(_ node: SinglyLinkedListNode<T>) {
        if let head = self.head {
            node.next = head
        }
        self.head = node
    }
    
    func node(atIndex index: Int) -> SinglyLinkedListNode<T>? {
        var currentNode = self.head
        var count = 0
        
        while let node = currentNode {
            if count == index {
                return currentNode
            }
            currentNode = node.next
            count += 1
        }
        return nil
    }
    
    func pop() -> SinglyLinkedListNode<T>? {
        guard var currentNode = self.head else {
            return nil
        }
        
        guard var nextNode = currentNode.next else {
            self.head = nil
            return currentNode
        }
        
        while let nextNextNode = nextNode.next  {
            currentNode = nextNode
            nextNode = nextNextNode
        }
        
        currentNode.next = nil
        return nextNode
    }
    
    func popLeft() -> SinglyLinkedListNode<T>? {
        guard let head = self.head else {
            return nil
        }
        
        self.head = head.next
        head.next = nil
        return head
    }
    
    func remove(atIndex index: Int) -> SinglyLinkedListNode<T>? {
        guard var currentNode = self.head else {
            return nil
        }
        
        if index == 0 {
            self.head = currentNode.next
            currentNode.next = nil
            return currentNode
        }
        
        var count = 1
        
        while count <= index, let indexNode = currentNode.next {
            if count == index {
                currentNode.next = indexNode.next
                indexNode.next = nil
                return indexNode
            }
            
            currentNode = indexNode
            count += 1
        }
        return nil
    }
    
    func values() -> [T] {
        var values: [T] = []
        var currentNode = self.head
        
        while let node = currentNode {
            values.append(node.value)
            currentNode = node.next
        }
        
        return values
    }
}
