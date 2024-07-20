//
//  LuckyNumbers.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/07/24.
//

import Foundation

// MARK: - 1380. Lucky Numbers in a Matrix

func luckyNumbers(_ matrix: [[Int]]) -> [Int] {
    var mins = Set<Int>()
    var result: [Int] = []
    
    for m in matrix {
        if let min = m.min() {
            mins.insert(min)
        }
    }
    
    for c in 0..<matrix[0].count {
        var curMax = matrix[0][c]
        for r in 0..<matrix.count {
            curMax = max(curMax, matrix[r][c])
        }
        if mins.contains(curMax) {
            result.append(curMax)
        }
    }
    
    return result
}
