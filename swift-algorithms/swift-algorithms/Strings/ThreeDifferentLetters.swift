//
//  ThreeDifferentLetters.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 6/7/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

/// Write a function that accepts two strings, and returns true if they are identical in length
/// but have no more than three different letters, taking case and string order into account.
/// Swift Coding Challenges #11
class ThreeDifferentLetters {
    static func threeDifferentLetters(s1: String, s2: String) -> Bool {
        guard s1.count == s2.count else {
            return false
        }
        var count = 0
    
        for index in s1.indices {
            if s1[index] == s2[index] {
                continue
            }
            if count < 3 {
                count += 1
                continue
            }
            return false
        }
        return true
    }
}
