//
//  SearchInsert.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/10/22.
//

import Foundation

// MARK: - 35. Search Insert Position

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] < target {
            left = mid + 1
        } else if nums[mid] > target {
            right = mid - 1
        } else {
            return mid
        }
    }
    
    if left == nums.count {
        left -= 1
    }
    return nums[left] < target ? left + 1 : left
}
