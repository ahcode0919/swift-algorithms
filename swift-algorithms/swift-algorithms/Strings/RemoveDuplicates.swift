//
//  RemoveDuplicateChars.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Remove duplicate characters from a String
/// Swift Coding Challenges - #6
class RemoveDuplicates {
    static func removeDuplicatesWithNSOrderedSet(from input: String) -> String {
        let set = NSOrderedSet(array: Array(input))
        if let array = set.array as? [Character] {
            return String(array)
        }
        return input
    }
    
    static func removeDuplicatesWithNSOrderedSetAndFilter(from input: String) -> String {
        var duplicateSet = Set<Character>()
        var inputArray = Array(input)
        inputArray = inputArray.filter { (char) -> Bool in
            if duplicateSet.contains(char) {
                return false
            }
            duplicateSet.insert(char)
            return true
        }
        return String(inputArray)
    }
    
    static func removeDuplicatesWithFilter(from input: String) -> String {
        var used = [Character]()
        let uniqueChars = input.filter { (char) -> Bool in
            if !used.contains(char) {
                used.append(char)
                return true
            }
            return false
        }
        return String(uniqueChars)
    }
    
    static func removeDuplicatesWithDictionaryAndFilter(from input: String) -> String {
        var uniqueDictionary = Dictionary<Character, Bool>()
        let output = input.filter { (char) -> Bool in
            return uniqueDictionary.updateValue(true, forKey: char) == nil
        }
        return String(output)
    }
}
