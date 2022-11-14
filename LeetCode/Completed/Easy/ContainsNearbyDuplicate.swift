//
//  ContainsNearbyDuplicate.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/10/22.
//

import Foundation

// MARK: - 219. Contains Duplicate II

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var dict = [Int: Int]()
    for (i, value) in nums.enumerated() {
        if let index = dict[value], i - index <= k {
            return true
        }
        dict[value] = i
    }
    return false
}
