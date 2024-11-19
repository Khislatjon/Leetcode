//
//  2461. Maximum Sum of Distinct Subarrays With Length K.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/11/2024.
//

import Foundation

// MARK: - 2461. Maximum Sum of Distinct Subarrays With Length K

func maximumSubarraySum(_ nums: [Int], _ k: Int) -> Int {
    var l = 0
    var dict: [Int: Int] = [:]
    var curSum = 0
    var maxSum = 0
    
    for r in nums.indices {
        dict[nums[r], default: 0] += 1
        curSum += nums[r]
        
        if r - l + 1 == k {
            if dict.count == k {
                maxSum = max(maxSum, curSum)
            }
            
            dict[nums[l], default: 0] -= 1
            if dict[nums[l]] == 0 {
                dict.removeValue(forKey: nums[l])
            }
            
            curSum -= nums[l]
            l += 1
        }
    }
    
    return maxSum
}
