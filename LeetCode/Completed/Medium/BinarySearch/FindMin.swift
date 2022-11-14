//
//  FindMin.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 18/10/22.
//

import Foundation

// MARK: - 153. Find Minimum in Rotated Sorted Array

func findMin(_ nums: [Int]) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left < right {
        let mid = left + (right - left) / 2
        if nums[mid] > nums[right] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return nums[left]
}
