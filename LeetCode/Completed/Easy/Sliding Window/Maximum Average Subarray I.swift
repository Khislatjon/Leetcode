//
//  Maximum Average Subarray I.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

// MARK: - 643. Maximum Average Subarray I

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var sum = 0
    var res = -Double.infinity
    var l = 0
    for r in nums.indices {
        sum += nums[r]
        if r - l + 1 == k {
            res = max(res, Double(sum) / Double(k))
            sum -= nums[l]
            l += 1
        }
    }
    return res
}
