//
//  MinSwaps.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/08/24.
//

import Foundation

// MARK: - 2134. Minimum Swaps to Group All 1's Together II

func minSwaps(_ nums: [Int]) -> Int {
    let totalOnes = nums.reduce(0, +)
    var maxWindowOnes = 0
    var currentOnes = 0
    var l = 0
    
    for r in 0..<2*nums.count {
        currentOnes += nums[r % nums.count]
        if r - l + 1 > totalOnes {
            currentOnes -= nums[l % nums.count]
            l += 1
        }
        maxWindowOnes = max(maxWindowOnes, currentOnes)
    }
    
    return totalOnes - maxWindowOnes
}
