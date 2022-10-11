//
//  SearchRange.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/10/22.
//

import Foundation

// MARK: - 34. Find First and Last Position of Element in Sorted Array

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    guard !nums.isEmpty else { return [-1, -1] }
    var indexes = [Int]()
    indexes.append(leftIndex(nums, target))
    indexes.append(rightIndex(nums, target))
    return indexes
}

func leftIndex(_ nums: [Int], _ target: Int) -> Int {
    var index = -1
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            right = mid - 1
            index = mid
        } else if nums[mid] > target {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return index
}

func rightIndex(_ nums: [Int], _ target: Int) -> Int {
    var index = -1
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            left = mid + 1
            index = mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return index
}
