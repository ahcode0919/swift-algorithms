//
//  CountCharacters.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 8/2/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

class CountCharacters {
    static func countOccurancesOfWithFilter(_ char: Character, in input: String) -> Int {
        return input.filter { (inputChar) -> Bool in
            return inputChar == char
        }.count
    }
    
    static func countOccurancesOfWithLoop(_ char: Character, in input: String) -> Int {
        var count = 0
        for inputChar in input {
            if inputChar == char {
                count += 1
            }
        }
        return count
    }
}
