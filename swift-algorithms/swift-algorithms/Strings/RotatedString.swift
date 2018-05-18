//
//  RotatedString.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Checks that a string is "Rotated" A string rotation is when you take a string, remove some letters from its end, then append them to the front.
/// For example, “swift” rotated by two characters would be “ftswi”.
class RotatedString {
    static func isRotatedStringWithAddition(_ original: String, rotated: String) -> Bool {
        guard original.count == rotated.count else {
            return false
        }
        return (original + original).contains(rotated)
    }
    
    static func isRotatedStringWithLoop(_ original: String, rotated: String) -> Bool {
        guard original.count == rotated.count else {
            return false
        }
        var tempString = original
        for _ in 0..<original.count {
            tempString.insert(tempString.last!, at: tempString.startIndex)
            tempString = String(tempString.dropLast())
            if tempString == rotated {
                return true
            }
        }
        return false
    }
}
