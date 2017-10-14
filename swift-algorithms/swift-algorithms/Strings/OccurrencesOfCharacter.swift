//
//  OccurancesOfCharacter.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Count the number of times a character occurs in a String
class OccurrencesOfCharacter {
    static func occurrencesOfWithLoop(_ input: Character, in text: String) -> Int {
        var count = 0
        
        for char in text.characters {
            if char == input {
                count += 1
            }
        }
        return count
    }
    
    static func occurrencesOfWithReduce(_ input: Character, in text: String) -> Int {
        return text.characters.reduce(0) { (result, char) -> Int in
            return char == input ? result + 1 : result
        }
    }
}
