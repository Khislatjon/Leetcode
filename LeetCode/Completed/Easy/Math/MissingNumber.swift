//
//  MissingNumber.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/02/24.
//

import Foundation

// MARK: - 268. Missing Number
// space - O(1), time - O(n)

func missingNumber(_ nums: [Int]) -> Int {
    let sum = nums.reduce(0, +)
    let all = nums.count * (nums.count + 1) / 2
    return all - sum
}
