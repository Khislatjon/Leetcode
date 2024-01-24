//
//  ClimbStairs.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 18/01/24.
//

import Foundation

// MARK: - 70. Climbing Stairs

func climbStairs(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return n
    }

    var lastNumber = 2
    var preLastNumber = 1
    var allWays = 0

    for _ in 3...n {
        allWays = lastNumber + preLastNumber
        preLastNumber = lastNumber
        lastNumber = allWays

    }
    return allWays
}
