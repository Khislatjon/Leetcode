//
//  SetZeroes.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/10/22.
//

import Foundation

// MARK: - 73. Set Matrix Zeroes

func setZeroes(_ matrix: inout [[Int]]) {
    var zeroIndexes = [(Int, Int)]()
    
    for i in matrix.indices {
        for j in matrix[i].indices {
            if matrix[i][j] == 0 {
                zeroIndexes.append((i, j))
            }
        }
    }
    print(zeroIndexes)
}
