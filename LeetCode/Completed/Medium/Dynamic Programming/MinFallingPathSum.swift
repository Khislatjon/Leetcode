//
//  MinFallingPathSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/01/24.
//

import Foundation

// MARK: - 931. Minimum Falling Path Sum

func minFallingPathSum(_ matrix: [[Int]]) -> Int {
    if matrix.count == 1 {
        return matrix[0].min() ?? 0
    }
    
    var mCopy = matrix
    for i in stride(from: mCopy.count - 2, through: 0, by: -1) {
        for j in 0..<mCopy[i].count {
            var minV = mCopy[i+1][j]
            if j - 1 >= 0 {
                minV = min(minV, mCopy[i+1][j-1])
            }
            if j + 1 < mCopy[i].count {
                minV = min(minV, mCopy[i+1][j+1])
            }
            mCopy[i][j] += minV
        }
    }
    return mCopy[0].min() ?? 0
}
