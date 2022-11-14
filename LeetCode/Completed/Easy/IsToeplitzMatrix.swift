//
//  IsToeplitzMatrix.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/11/22.
//

import Foundation

// MARK: - 766. Toeplitz Matrix

func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    for i in 0..<matrix.count - 1 {
        for j in 0..<matrix[i].count - 1 {
            if matrix[i][j] != matrix[i+1][j+1] {
                return false
            }
        }
    }
    return true
}
