//
//  MinIncrementForUnique.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/06/24.
//

import Foundation

// MARK: - 945. Minimum Increment to Make Array Unique

func minIncrementForUnique(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()
    var result = 0, needed = 0
    
    for el in sorted {
        result += max(needed - el, 0)
        needed = max(needed + 1, el + 1)
    }
    
    return result
}

// [3,2,1,2,1,7]
// [1,1,2,2,3,7]


