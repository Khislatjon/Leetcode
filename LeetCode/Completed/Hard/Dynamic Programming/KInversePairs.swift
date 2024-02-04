//
//  KInversePairs.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/01/24.
//

import Foundation

// MARK: - 629. K Inverse Pairs Array

// swift version didn't pass. Submitted in Python
func kInversePairs(_ n: Int, _ k: Int) -> Int {
    let mod = 1_000_000_007
    var prev = Array(repeating: 0, count: k+1)
    prev[0] = 1
    
    for N in 2..<n+1 {
        var cur = Array(repeating: 0, count: k+1)
        var window = 0 // sliding window
        for K in 0..<k+1 {
            if K >= N {
                window -= prev[K-N]
            }
            window = (window + prev[K]) % mod
            cur[K] = window
        }
        prev = cur
    }
    return prev[k] % mod
}

//def kInversePairs(self, n: int, k: int) -> int:
//        mod = 10**9 + 7
//        prev = [0] * (k+1)
//        prev[0] = 1
//        
//        for N in range(1, n+1):
//            cur = [0] * (k+1)
//            window = 0
//            
//            for K in range(0, k+1):
//                if K>=N:
//                    window -= prev[K-N]
//                
//                window = (window + prev[K]) % mod
//                cur[K] = window
//            prev = cur
//        return prev[k]
