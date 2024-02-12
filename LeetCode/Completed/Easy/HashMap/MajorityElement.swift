//
//  MajorityElement.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/02/24.
//

import Foundation

// MARK: - 169. Majority Element

// Space: O(n)
//func majorityElement(_ nums: [Int]) -> Int {
//    var dict: [Int: Int] = [:]
//    for num in nums {
//        dict[num, default: 0] += 1
//        if dict[num]! > nums.count/2 {
//            return num
//        }
//    }
//    return 0
//}

// Space: O(1)
func majorityElement(_ nums: [Int]) -> Int {
    var res = 0
    var count = 0
    for i in 0..<nums.count {
        if count == 0 {
            res = nums[i]
        }
        count += (nums[i] == res ? 1 : -1)
    }
    return res
}
