//
//  Contains.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Check if one string contains another
/// Swift Coding Challenges - #4
class Contains {
    
    static func containsIgnoreCaseWithRange(_ s1: String, contains s2: String) -> Bool {
        if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
            return false
        }
        return s1.range(of: s2) != nil
    }
    
    static func containsIgnoreCaseWithLoop(_ s1: String, contains s2: String) -> Bool {
        if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
            return false
        }
        
        let input1 = Array(s1)
        let input2 = Array(s2)
        
        var currentIndex = 0
        
        while currentIndex < input1.count - input2.count {
            var match = true
            for i in 0..<input2.count {
                if input1[currentIndex] != input2[i] {
                    currentIndex += 1
                    match = false
                    break
                }
                currentIndex += 1
            }
            if match {
                return true
            }
        }
        return false
    }
    
    static func containsWithStringAPI(_ s1: String, contains s2: String) -> Bool {
        return s1.contains(s2)
    }
}
