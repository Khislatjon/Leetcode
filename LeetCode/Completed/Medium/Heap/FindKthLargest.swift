//
//  FindKthLargest.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/02/24.
//

import Foundation

// MARK: - 215. Kth Largest Element in an Array

class FindKthLargest {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var heap = MaxHeap()
        for n in nums {
            heap.add(n)
        }
        
        var i = 1
        while i < k {
            heap.poll()
            i += 1
        }
        return heap.peek()
    }
}
