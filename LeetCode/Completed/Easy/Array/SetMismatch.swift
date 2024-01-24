//
//  SetMismatch.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/01/24.
//

import Foundation

// MARK: - 645. Set Mismatch

func findErrorNums(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: 2)
    var arr = Array(repeating: 0, count: nums.count)
    for i in 0..<nums.count {
        arr[nums[i]-1] += 1
    }
    for i in 0..<arr.count {
        if arr[i] == 2 {
            result[0] = i+1
        } else if arr[i] == 0 {
            result[1] = i+1
        }
    }
    return result
}
