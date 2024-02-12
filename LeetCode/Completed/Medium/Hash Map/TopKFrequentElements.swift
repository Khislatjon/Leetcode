//
//  TopKFrequentElements.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/02/24.
//

import Foundation

// MARK: - 347. Top K Frequent Elements

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    var freq: [[Int]] = Array(repeating: [], count: nums.count+1)
    var res: [Int] = []
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    for (key, value) in dict {
        freq[value].append(key)
    }
    
    for i in stride(from: freq.count-1, to: 0, by: -1) {
        for j in 0..<freq[i].count {
            res.append(freq[i][j])
            if res.count == k {
                return res
            }
        }
    }
    
    return res
}
