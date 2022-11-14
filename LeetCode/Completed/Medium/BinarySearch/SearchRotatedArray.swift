//
//  SearchRotatedArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/10/22.
//

import Foundation

// MARK: - 33. Search in Rotated Sorted Array

func searchRotatedArray(_ nums: [Int], _ target: Int) -> Int {
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
    
    let start = left
    left = 0
    right = nums.count - 1
    
    // setting which part of array to search
    if target >= nums[start] && target <= nums[right] {
        left = start
    } else {
        right = start
    }
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] < target {
            left = mid + 1
        } else if nums[mid] > target {
            right = mid - 1
        } else {
            return mid
        }
    }
    return -1
}
