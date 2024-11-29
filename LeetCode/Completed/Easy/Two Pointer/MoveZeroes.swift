//
//  MoveZeroes.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/11/2024.
//

import Foundation

// MARK: - 283. Move Zeroes

func moveZeroes(_ nums: inout [Int]) {
    var l = 0
    for r in nums.indices {
        if nums[r] != 0 {
            (nums[l], nums[r]) = (nums[r], nums[l])
            l += 1
        }
    }
}
