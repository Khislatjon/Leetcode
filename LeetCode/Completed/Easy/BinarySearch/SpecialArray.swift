//
//  SpecialArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/10/22.
//

import Foundation

// MARK: - 1608. Special Array With X Elements Greater Than or Equal X

func specialArray(_ nums: [Int]) -> Int {
    let nums = nums.sorted()
    var curMax = 0
    for i in 0..<nums.count {
        let x = nums.count - i
        if x > curMax && x <= nums[i] {
            return x
        }
        curMax = nums[i]
    }
    return -1
}
