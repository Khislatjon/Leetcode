//
//  SearchRotatedArray2.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/01/24.
//

import Foundation

// MARK: - 34. Find First and Last Position of Element in Sorted Array

func search(_ nums: [Int], _ target: Int) -> Bool {
    guard !nums.isEmpty else { return false }

    var start = 0
    var end = nums.count - 1

    while start <= end {
        let mid = start + (end - start) / 2
        guard nums[mid] != target else { return true }

        if nums[start] == nums[mid], nums[end] == nums[mid] { // handle duplicates
            start += 1
            end -= 1
        } else if nums[start] <= nums[mid] {
            if nums[start] <= target, target < nums[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        } else {
            if nums[mid] < target, target <= nums[end] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
    }

    return false
}

//[10,0,1,3,3,3], 8
