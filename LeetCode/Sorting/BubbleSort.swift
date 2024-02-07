//
//  BubbleSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/02/24.
//

import Foundation

func bubbleSort(_ nums: inout [Int]) {
    for i in 0..<nums.count-1 {
        let swaps = bubble(i, &nums)
        if swaps == 0 {
            break
        }
    }
}

private func bubble(_ i: Int, _ nums: inout [Int]) -> Int {
    var swaps = 0
    for i in 0..<nums.count-1  {
        if nums[i] > nums[i+1] {
            (nums[i], nums[i+1]) = (nums[i+1], nums[i])
            swaps += 1
        }
    }
    return swaps
}


