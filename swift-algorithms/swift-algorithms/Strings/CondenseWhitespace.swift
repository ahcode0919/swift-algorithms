//
//  CondenseWhitespace.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/3/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Remove extra white space from String
/// Swift Coding Challenges - #7
class CondenseWhitespace {
    static func condenseWhitespaceWithLoop(_ text: String) -> String {
        var charArray = [Character]()
        var lastCharWasSpace = false

        for char in text {
            if lastCharWasSpace == false {
                charArray.append(char)
                if char == " " {
                    lastCharWasSpace = true
                }
            } else {
                if char == " " {
                    continue
                }
                charArray.append(char)
                lastCharWasSpace = false
            }
        }
        return String(charArray)
    }
    
    static func condenseWhitespaceWithRegex(_ text: String) -> String {
        return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
    }
    
    static func condenseWhitespaceWithSplit(_ text: String) -> String {
        var result = text.split(separator: " ").joined(separator: " ")
        if text.first == " " {
            result.insert(" ", at: result.startIndex)
        }
        if text.last == " " {
            result.append(" ")
        }
        return result
    }
}
