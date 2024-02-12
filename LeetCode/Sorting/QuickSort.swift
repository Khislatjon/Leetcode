//
//  QuickSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/02/24.
//

import Foundation

// Partition: Two pointer i, j. Pivot is last element always.
/*
 Time:
 Best: O(nLogn)
 Average: O(nLogn)
 Worst: O(n^2)
 Space: O(nLogn)
*/

func quickSort(_ nums: inout [Int]) {
    quickSort(&nums, 0, nums.count-1)
}

private func quickSort(_ nums: inout [Int], _ low: Int, _ high: Int) {
    if low < high {
        let placedItemIndex = partition(&nums, low, high)
        quickSort(&nums, low, placedItemIndex-1)
        quickSort(&nums, placedItemIndex+1, high)
    }
}

private func partition(_ array: inout [Int], _ low: Int, _ high: Int) -> Int {
    let pivot = array[high]
    var i = low
    for j in i..<high {
        if array[i] < pivot {
            (array[i], array[j]) = (array[j], array[i])
            i += 1
        }
    }
    (array[i], array[high]) = (array[high], array[i])
    return i
}
