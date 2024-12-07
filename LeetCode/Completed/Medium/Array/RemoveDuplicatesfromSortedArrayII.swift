//
//  RemoveDuplicatesfromSortedArrayII.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/02/24.
//

// MARK: - 80. Remove Duplicates from Sorted Array II

import Foundation
class RemoveDuplicatesfromSortedArrayII {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        for num in nums {
            if i < 2 || num > nums[i-2] {
                nums[i] = num
                i += 1
            }
        }
        return i
    }
}
