//
//  1975. Maximum Matrix Sum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/11/2024.
//

import Foundation

// MARK: - 1975. Maximum Matrix Sum

func maxMatrixSum(_ matrix: [[Int]]) -> Int {
    var sum = 0
    var minPositive = Int.max
    var negativeCount = 0
    var maxNegative = Int.min
    
    for row in matrix {
        for el in row {
            if el >= 0 {
                minPositive = min(minPositive, el)
                sum += el
            } else if el < 0 {
                sum += (abs(el))
                negativeCount += 1
                maxNegative = max(maxNegative, el)
            }
        }
    }
    
    if negativeCount % 2 != 0 && minPositive != 0 {
        sum -= 2 * min(abs(maxNegative), minPositive)
    }
    
    return sum
}
