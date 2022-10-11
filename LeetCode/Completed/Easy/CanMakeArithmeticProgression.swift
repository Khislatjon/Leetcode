//
//  CanMakeArithmeticProgression.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/09/22.
//

import Foundation

// MARK: - 1502. Can Make Arithmetic Progression From Sequence

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    let nums = arr.sorted()
    let diff = nums[1] - nums[0]
    
    for i in 1..<nums.count-1 {
        if nums[i+1] - nums[i] != diff {
            return false
        }
    }
    return true
}
