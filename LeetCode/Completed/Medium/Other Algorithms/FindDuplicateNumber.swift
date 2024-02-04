//
//  FindDuplicateNumber.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/01/24.
//

import Foundation

// Floyd's turtle and hare algorithm

// MARK: - 287. Find the Duplicate Number

func findDuplicate(_ nums: [Int]) -> Int {
    var slow = 0
    var fast = 0
    
    while true {
        slow = nums[slow]
        fast = nums[nums[fast]]
        
        if slow == fast {
            break
        }
    }
    
    var start = 0
    while start != slow {
        start = nums[start]
        slow = nums[slow]
        
        if start == slow {
            break
        }
    }
    return start
}
