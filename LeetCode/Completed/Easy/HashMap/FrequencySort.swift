//
//  FrequencySort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/07/24.
//

import Foundation

// MARK: - 1636. Sort Array by Increasing Frequency

func frequencySort(_ nums: [Int]) -> [Int] {
    var counter: [Int: Int] = [:]
    var result: [Int] = []
    
    for num in nums {
        counter[num, default: 0] += 1
    }
    let sorted = counter.sorted { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value }
    for dict in sorted {
        result.append(contentsOf: Array(repeating: dict.key, count: dict.value))
    }
    
    return result
}
