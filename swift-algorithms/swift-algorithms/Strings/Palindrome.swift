//
//  Palindrome.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Check that a string is the same forwards and backwards, Ex: mom, dad, etc.
class Palindrome {
    static func isPalindrome(_ input: String) -> Bool {
        if input.characters.count < 2 {
            return true
        }
        let lowercasedInput = input.lowercased()
        return lowercasedInput == String(lowercasedInput.reversed())
    }
    
    static func isPalindrome2(_ input: String) -> Bool {
        var charView = input.lowercased().characters
        
        while charView.count > 1,
            let first = charView.popFirst(),
            let last = charView.popLast() {
            if last != first {
                return false
            }
        }
        return true
    }
}
