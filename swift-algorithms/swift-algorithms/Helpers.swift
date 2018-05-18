//
//  Helpers.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/1/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation
import GameKit

class Helpers {
    static func generateRandomString(ofLength length: Int = 1000000) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 "
        let charCount = characters.count
        var wordArray = [Character](repeating: "0", count: length)
        let randomGenerator = GKRandomSource.sharedRandom()
        
        for i in 0..<length {
            let index = characters.index(characters.startIndex,
                                         offsetBy: randomGenerator.nextInt(upperBound: charCount))
            wordArray[i] = characters[index]
        }
        return String(wordArray)
    }
}
