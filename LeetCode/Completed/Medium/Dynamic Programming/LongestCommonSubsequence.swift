//
//  LongestCommonSubsequence.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 25/01/24.
//

import Foundation

// MARK: - 1143. Longest Common Subsequence

func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    var dp = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)
    let arr1 = Array(text1)
    let arr2 = Array(text2)
    
    for i in stride(from: text1.count-1, through: 0, by: -1) {
        for j in stride(from: text2.count-1, through: 0, by: -1) {
            if arr1[i] == arr2[j] {
                dp[i][j] = 1 + dp[i+1][j+1]
            } else {
                dp[i][j] = max(dp[i][j+1], dp[i+1][j])
            }
        }
    }
    return dp[0][0]
}
