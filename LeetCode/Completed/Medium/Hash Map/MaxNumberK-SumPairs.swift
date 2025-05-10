//
//  MaxNumberK-SumPairs.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/12/2024.
//

import Foundation

// MARK: - 1679. Max Number of K-Sum Pairs

func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var dict: [Int: Int] = [:]
    var pairs = 0
    for num in nums {
        if let count = dict[k-num], count > 0 {
            dict[k-num, default: 0] -= 1
            pairs += 1
        } else {
            dict[num, default: 0] += 1
        }
    }
    return pairs
}
