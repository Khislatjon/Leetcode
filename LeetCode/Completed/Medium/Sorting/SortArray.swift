//
//  SortArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/02/24.
//

import Foundation

// MARK: - 912. Sort an Array

class SortArray {
    func sortArray(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        let mid = nums.count / 2
        let leftArray = sortArray(Array(nums[0..<mid]))
        let rightArray = sortArray(Array(nums[mid..<nums.count]))
        return merge(leftArray, rightArray)
    }

    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var l = 0
        var r = 0
        var sorted: [Int] = []
        
        while l < left.count && r < right.count {
            if left[l] < right[r] {
                sorted.append(left[l])
                l += 1
            } else if right[r] < left[l] {
                sorted.append(right[r])
                r += 1
            } else {
                sorted.append(left[l])
                sorted.append(right[r])
                l += 1
                r += 1
            }
        }
        
        for i in l..<left.count {
            sorted.append(left[i])
        }
        for i in r..<right.count {
            sorted.append(right[i])
        }
        return sorted
    }
}
