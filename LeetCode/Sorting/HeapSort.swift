//
//  HeapSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

func heapSort(_ nums: inout [Int]) {
    var heap = MaxHeap()
    for n in nums {
        heap.add(n)
    }
    var i = nums.count - 1
    while i >= 0 {
        nums[i] = heap.poll()
        i -= 1
    }
}
