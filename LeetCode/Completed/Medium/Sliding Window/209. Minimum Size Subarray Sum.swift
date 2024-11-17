//
//  209. Minimum Size Subarray Sum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/11/2024.
//

import Foundation

// MARK: - 209. Minimum Size Subarray Sum
// Solution works when nums elements are >= 1

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var minSize = Int.max
    var sum = 0
    var count = 0
    
    for i in nums.indices {
        sum += nums[i]
        count += 1
        while sum >= target {
            minSize = min(minSize, count)
            sum -= nums[i-count+1]
            count -= 1
        }
    }
    return minSize == Int.max ? 0 : minSize
}
