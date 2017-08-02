//
//  UniqueCharacters.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/1/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

///Functions to check if a string only consists of unique characters
/// Swift Coding Challenge #1
class UniqueCharacters {
    
    /// Checks if a String only contains unique Characters by using a Set comparison
    ///
    /// - Parameter input: input string
    /// - Returns: true if string consists of unique characters
    static func uniqueCharacters(_ input: String) -> Bool {
        if input.characters.count < 2 {
            return true
        }
        return input.characters.count == Set(input.characters).count
    }
    
    /// Checks if a String only contains unique Characters by iterating through the input and checking
    /// against a Set
    ///
    /// - Parameter input: input String
    /// - Returns: true if string consists of unique characters
    static func uniqueCharacters2(_ input: String) -> Bool {
        if input.characters.count < 2 {
            return true
        }
        var inputSet = Set<Character>()
        
        for char in input.characters {
            if inputSet.contains(char) {
                return false
            }
            inputSet.insert(char)
        }
        return true
    }
}
