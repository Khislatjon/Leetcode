//
//  MaximumNumberOperationsWithSameScore.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/02/24.
//

import Foundation

// MARK: - 3038. Maximum Number of Operations With the Same Score I

func maxOperations(_ nums: [Int]) -> Int {
    let sum = nums[0] + nums[1]
    var count = 1
    var i = 2
    while i < nums.count-1 {
        if nums[i] + nums[i+1] == sum {
            count += 1
        } else {
            break
        }
        i += 2
    }
    return count
}
