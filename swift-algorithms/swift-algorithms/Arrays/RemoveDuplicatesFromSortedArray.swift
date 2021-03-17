//
//  RemoveDuplicatesFromSortedArray.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 3/14/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

class RemoveDuplicatesFromSortedArray {
    static func removeDuplicates(array: inout [Int]) {
        var count = 0
        while count < array.count - 1 {
            if array[count] == array[count + 1] {
                array.remove(at: count + 1)
            } else {
                count += 1
            }
        }
    }
}
