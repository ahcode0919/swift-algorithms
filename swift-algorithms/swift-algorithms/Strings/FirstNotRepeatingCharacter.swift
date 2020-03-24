//
//  FirstNotRepeatingCharacter.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 3/24/2020.
//  Copyright © 2020 No Name Software. All rights reserved.
//

import Foundation

class FirstNotRepeatingCharacter {
    
    static func firstWithDictionary(_ string: String) -> Character? {
        var charCount = Dictionary<Character, Int>(minimumCapacity: 26)
        
        for char in string {
            charCount[char] = (charCount[char] ?? 0) + 1
        }
        
        for char in string {
            if charCount[char] == 1 {
                return char
            }
        }
        
        return "_"
    }
}
