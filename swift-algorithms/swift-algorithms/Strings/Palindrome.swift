//
//  Palindrome.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Check that a string is the same forwards and backwards, Ex: mom, dad, etc.
/// Swift Coding Challenges - #2
class Palindrome {
    /// String.reversed() - O(1)
    static func isPalindromeWithReverse(_ input: String) -> Bool {
        if input.count < 2 {
            return true
        }
        let lowercasedInput = input.lowercased()
        return lowercasedInput == String(lowercasedInput.reversed())
    }
    
    static func isPalindromeWithArray(_ input: String) -> Bool {
        var charArray = Array(input.lowercased())
        
        while charArray.count > 1, let last = charArray.popLast() {
            if last != charArray.remove(at: 0) {
                return false
            }
        }
        return true
    }
}
