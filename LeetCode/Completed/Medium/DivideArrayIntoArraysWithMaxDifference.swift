//
//  DivideArrayIntoArraysWithMaxDifference.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/02/24.
//

import Foundation

// MARK: - 2966. Divide Array Into Arrays With Max Difference

class DivideArray {
    func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
        let sorted = nums.sorted()
        var res = [[Int]]()
        for i in stride(from: 0, to: sorted.count-2, by: 3) {
            if sorted[i+2] - sorted[i] <= k {
                res.append(Array(sorted[i...i+2]))
            } else {
                print(sorted[i+2])
                print(sorted[i])
                return []
            }
        }
        return res
    }
}
