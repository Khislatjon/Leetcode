//
//  SelectionSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/02/24.
//

import Foundation

func selectionSort(_ nums: inout [Int]) {
    for i in 0..<nums.count {
        let minIndex = select(i, &nums)
        (nums[i], nums[minIndex]) = (nums[minIndex], nums[i])
    }
}

private func select(_ start: Int, _ nums: inout [Int]) -> Int {
    var pos = start
    for i in start..<nums.count {
        if nums[i] < nums[pos] {
            pos = i
        }
    }
    return pos
}
