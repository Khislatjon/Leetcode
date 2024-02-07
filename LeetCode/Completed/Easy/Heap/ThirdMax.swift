//
//  ThirdMax.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/02/24.
//

import Foundation

// MARK: - 414. Third Maximum Number

class ThirdMax {
    func thirdMax(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var heap = MaxHeap()
        for n in set {
            heap.add(n)
        }
    
        if heap.items.count > 2 {
            var i = 1
            while i < 3 {
                heap.poll()
                i += 1
            }
        }
        return heap.peek()
    }
}
