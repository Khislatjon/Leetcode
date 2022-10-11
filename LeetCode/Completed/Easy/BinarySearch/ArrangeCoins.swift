//
//  ArrangeCoins.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/10/22.
//

import Foundation

// MARK: - 441. Arranging Coins
// From a simple arithmetic progression

//func arrangeCoins(_ n: Int) -> Int {
//    Int((sqrt(Double(1 + 8*n)) - 1) / 2)
//}

func arrangeCoins(_ n: Int) -> Int {
    var left = 1
    var right = n
    var res = 0
    
    while left <= right {
        let mid = (left + right) / 2
        let coins = mid * (mid + 1) / 2
        if coins > n {
            right = mid - 1
        } else {
            left = mid + 1
            res = max(res, mid)
        }
    }
    return res
}
