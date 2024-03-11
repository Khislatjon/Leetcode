//
//  FactorialTrailingZeroes.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/02/24.
//

// MARK: - 172. Factorial Trailing Zeroes

import Foundation

func trailingZeroes(_ n: Int) -> Int {
    return n == 0 ? 0 : n / 5 + trailingZeroes(n / 5)
}
