//
//  SinglyLinkedListNode.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 1/12/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import Foundation

class SinglyLinkedListNode<T> {
    var next: SinglyLinkedListNode<T>?
    var value: T
    
    init(value: T) {
        self.value = value
    }
}
