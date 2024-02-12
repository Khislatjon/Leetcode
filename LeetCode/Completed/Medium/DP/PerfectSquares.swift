//
//  PerfectSquares.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/02/24.
//

import Foundation

// MARK: - 62. Unique Paths

func numSquares(_ n: Int) -> Int {
    var dp = Array(repeating: n, count: n+1)
    dp[0] = 0
    
    for target in 1...n {
        for s in 1...target {
            let square = s*s
            if target - square < 0 {
                break
            }
            dp[target] = min(dp[target], 1 + dp[target-square])
        }
    }
    
    return dp[n]
}
