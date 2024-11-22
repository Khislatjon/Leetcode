//
//  TwoSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

// MARK: - 1. Two Sum

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    for i in nums.indices {
        if let v = dict[target-nums[i]] {
            return [v, i]
        }
        dict[nums[i]] = i
    }
    return []
}
