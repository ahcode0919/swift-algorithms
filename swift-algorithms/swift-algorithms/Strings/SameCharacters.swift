//
//  SameCharacters.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Check that two strings have the same character (including matching casing)
/// Swift Coding Challenges - #3
class SameCharacters {
    static func hasSameCharactersWithLoop(_ s1: String, in s2: String) -> Bool {
        if s1.count != s2.count {
            return false
        }
        
        var input = Substring(s1)
        var input2 = Substring(s2)
        
        while input.count != 0 {
            if let char = input2.popFirst(), let index = input.index(of: char) {
                input.remove(at: index)
                continue
            }
            return false
        }
        return true
    }
    
    static func hasSameCharactersWithSort(_ s1: String, in s2: String) -> Bool {
        if s1.count != s2.count {
            return false
        }
        return s1.sorted() == s2.sorted()
    }
    
    static func hasSameCharactersWithDictionary(_ s1: String, in s2: String) -> Bool {
        if s1.count != s2.count {
            return false
        }
        
        var input1Dictionary = [Character: Int]()
        var input2Dictionary = [Character: Int]()
        
        s1.forEach { (char) in
            if var value = input1Dictionary[char] {
                value += 1
            } else {
                input1Dictionary[char] = 1
            }
        }
        
        s2.forEach { (char) in
            if var value = input2Dictionary[char] {
                value += 1
            } else {
                input2Dictionary[char] = 1
            }
        }

        for pair in input1Dictionary.enumerated() {
            if input2Dictionary[pair.element.key] != pair.element.value {
                return false
            }
        }
        return true
    }
}
