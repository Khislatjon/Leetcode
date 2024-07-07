//
//  CheckSubarraySum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/06/24.
//

import Foundation

// MARK: - 523. Continuous Subarray Sum

func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
    var remainder = [0: -1]
    var sum = 0
    
    for (i, num) in nums.enumerated() {
        sum += num
        let r = sum % k
        if remainder[r] == nil {
            remainder[r] = i
        } else if i - remainder[r]! > 1 {
            return true
        }
    }
    return false
}
