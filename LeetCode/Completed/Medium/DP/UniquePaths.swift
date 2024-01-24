//
//  UniquePaths.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/01/24.
//

import Foundation

// MARK: - 62. Unique Paths

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var arr = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
    return helper(m, n, &arr)
}

func helper(_ m: Int, _ n: Int, _ arr: inout [[Int]]) -> Int {
    if m < 1 || n < 1 {
        return 0
    }
    if m == 1 && n == 1 {
        return 1
    }
    
    if arr[m][n] == 0 {
        arr[m][n] = helper(m-1, n, &arr) + helper(m, n-1, &arr)
    }
    return arr[m][n]
}


