//
//  KthLargest.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/08/24.
//

import Foundation

// MARK: - 703. Kth Largest Element in a Stream

class KthLargest {
    private let k: Int
    var heap = MinHeap()
    
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        for num in nums {
            heap.add(num)
        }
        while heap.items.count > k {
            heap.poll()
        }
    }
    
    func add(_ val: Int) -> Int {
        heap.add(val)
        if heap.items.count > k {
            heap.poll()
        }
        return heap.peek()
    }
}
