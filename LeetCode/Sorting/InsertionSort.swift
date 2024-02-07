//
//  InsertionSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

func insertionSort(_ nums: inout [Int]) {
    for i in 1..<nums.count {
        let temp = nums[i]
        var j = i-1
        while j >= 0 && nums[j] > temp {
            nums[j+1] = nums[j]
            j -= 1
        }
        nums[j+1] = temp
    }
}
