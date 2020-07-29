//
//  RemoveDuplicates.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 9/27/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

class ArrayRemoveDuplicates {
    static func removeDuplicatesWithNSOrderedSet<T>(_ array: [T]) -> [T] {
        let set = NSOrderedSet(array: array)
        guard let newArray = set.array as? [T] else {
            return array
        }
        return newArray
    }
    
    static func removeDuplicatesWithSet<T: Hashable & Equatable>(_ array: [T]) -> [T] {
        var uniqueValues: [T] = []
        var seen = Set<T>()
        for value in array {
            if seen.contains(value) {
                continue
            } else {
                uniqueValues.append(value)
                seen.insert(value)
            }
        }
        return uniqueValues
    }
    
    static func removeDuplicatesWithReduce<T: Equatable>(_ array: [T]) -> [T] {
        return array.reduce(into: []) { (results, value) in
            let elementPresent = results.contains() { (element) -> Bool in
                element == value
            }
            if !elementPresent {
                results.append(value)
            }
        }
    }
}

