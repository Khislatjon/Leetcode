//
//  JudgeSquareSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/10/22.
//

import Foundation

// MARK: - 633. Sum of Square Numbers

func judgeSquareSum(_ c: Int) -> Bool {
    var left = 0
    var right = Int(sqrt(Double(c)))
    
    while left <= right {
        let sum = left * left + right * right
        guard sum != c else { return true }
        if sum < c {
            left += 1
        } else {
            right -= 1
        }
    }
    return false
}
