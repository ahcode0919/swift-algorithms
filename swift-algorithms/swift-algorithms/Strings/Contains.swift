//
//  Contains.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

class Contains {
    static func containsIgnoreCaseWithRange(_ s1: String, contains s2: String) -> Bool {
        if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
            return false
        }
        
        let input1 = s1.lowercased()
        let input2 = s2.lowercased()
    
        return input1.range(of: input2) != nil
    }
    
    static func containsIgnoreCaseWithLoop(_ s1: String, contains s2: String) -> Bool {
        if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
            return false
        }
        
        let input1 = Array(s1.lowercased())
        let input2 = Array(s2.lowercased())
        
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
}
