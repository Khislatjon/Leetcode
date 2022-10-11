//
//  GuessNumber.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/10/22.
//

import Foundation

// MARK: - 374. Guess Number Higher or Lower

func guessNumber(_ n: Int) -> Int {
    var left = 1
    var right = n
    
    while left <= right {
        let mid = (left + right) / 2
        let val = guess(mid)
        if val == -1 {
            right = mid - 1
        } else if val == 1 {
            left = mid + 1
        } else {
            return mid
        }
    }
    return 0
}

// This func is declared there
func guess(_ num: Int) -> Int {
    return -1
}
