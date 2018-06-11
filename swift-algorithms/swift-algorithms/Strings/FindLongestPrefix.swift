//
//  FindLongestPrefix.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 6/8/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

/// Write a function that accepts a string of words with a similar prefix, separated by spaces,
/// and returns the longest substring that prefixes all words.
class FindLongestPrefix {
    
    /// Find the longest common prefix
    /// * Note: assumption is that all the values are of the same length
    ///
    /// - Parameter words: series of words seperated by a space
    static func findLongestPrefix(_ s1: String) -> String {
        let words = s1.components(separatedBy: " ")
        
        guard words.count > 1 else { return s1 }
        
        var prefixEndIndex = words[0].endIndex
        
        for index in 1..<words.count {
            for position in words[index].indices {
                //Return early if we've iterated to the max index of the last known prefix
                if position > prefixEndIndex { break }
                
                // Check if characters match
                if words[0][position] == words[index][position] { continue }
                
                // Set the max end index to the position of our invalid match
                if prefixEndIndex > position {
                    prefixEndIndex = position
                    break
                }
            }
        }
        return String(words[0].prefix(upTo: prefixEndIndex))
    }
}
