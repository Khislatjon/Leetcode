//
//  DiagonalSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/10/22.
//

import Foundation

// MARK: - 1572. Matrix Diagonal Sum

func diagonalSum(_ mat: [[Int]]) -> Int {
    var i = 0
    var j = mat.count - 1
    var sum = 0
    
    for row in mat {
        if i == j {
            sum += row[i]
        } else {
            sum += row[i]
            sum += row[j]
        }
        
        i += 1
        j -= 1
    }
    return sum
}
