//
//  DominantIndex.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/09/22.
//

import Foundation

// MARK: - 747. Largest Number At Least Twice of Others

func dominantIndex(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var max = nums.first!
    var maxIndex = 0
    for i in 1..<nums.count {
        if nums[i] > max {
            max = nums[i]
            maxIndex = i
        }
    }
    
    for i in 0..<nums.count {
        if nums[i] * 2 > max && i != maxIndex {
            return -1
        }
    }
    return maxIndex
}
