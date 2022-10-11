//
//  LastStoneWeight.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/10/22.
//

import Foundation

// MARK: - 1046. Last Stone Weight

func lastStoneWeight(_ stones: [Int]) -> Int {
    guard !stones.isEmpty else { return 0 }
    guard stones.count != 1 else { return stones[0] }
    
    var sorted = stones.sorted()
    let c = sorted.count
    if sorted[c - 1] == sorted[c - 2] {
        sorted.removeLast()
        sorted.removeLast()
    } else if sorted[c - 1] > sorted[c - 2] {
        sorted[c - 1] = sorted[c - 1] - sorted[c - 2]
        sorted.remove(at: c - 2)
    }
    return lastStoneWeight(sorted)
}
