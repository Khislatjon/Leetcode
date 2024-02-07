//
//  SortColors.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/02/24.
//

import Foundation

// MARK: - 75. Sort Colors

func sortColors(_ nums: inout [Int]) {
    var l = 0, i = 0, r = nums.count-1
    
    while i <= r {
        if nums[i] == 0 {
            (nums[i], nums[l]) = (nums[l], nums[i])
            l += 1
        } else if nums[i] == 2 {
            (nums[i], nums[r]) = (nums[r], nums[i])
            r -= 1
            i -= 1
        }
        i += 1
    }
}
