//
//  VowelsAndConsonants.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 5/17/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

/// Count the number of vowels and consonants in a String
class VowelsAndConsonants {
    static let vowels = "aeiou"
    static let consonants = "bcdfghjklmnpqrstvwxyz"
    
    static func vowelsAndConsonantsForEach(_ s1: String) -> (vowels: Int, consonants: Int) {
        let normalizedString = s1.lowercased()
        var count: (vowels: Int, consonants: Int) = (vowels: 0, consonants: 0)
        normalizedString.forEach {
            if vowels.contains($0) {
                count.vowels += 1
            } else if consonants.contains($0) {
                count.consonants += 1
            }
        }
        return count
    }
}
