//
//  RemoveDuplicatesfromSortedArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/12/2024.
//

import Foundation

// MARK: - 26. Remove Duplicates from Sorted Array
class RemoveDuplicatesfromSortedArrayI {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var insertIndex = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i-1] {
                nums[insertIndex] = nums[i]
                insertIndex += 1
            }
        }
        return insertIndex
    }
}
