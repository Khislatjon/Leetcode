//
//  ContainsDuplicate.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

// MARK: - 217. Contains Duplicate

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    for num in nums {
        if let _ = dict[num] {
            return true
        } else {
            dict[num] = num
        }
    }
    return false
}
