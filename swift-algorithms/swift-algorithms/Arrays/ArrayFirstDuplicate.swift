//
//  ArrayFirstDuplicate.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 7/10/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

class ArrayFirstDuplicate {
    static func firstDuplicate(_ array: Array<Int>) -> Int? {
        var uniqueNums = Set<Int>()
        
        for (index, number) in array.enumerated() {
            if uniqueNums.contains(number) {
                return index
            }
            uniqueNums.insert(number)
        }
        return nil
    }
}
