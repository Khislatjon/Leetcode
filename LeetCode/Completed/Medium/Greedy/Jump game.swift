//
//  Jump game.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/2024.
//

import Foundation

// MARK: - 55. Jump game

func canJump(_ nums: [Int]) -> Bool {
    var gas = 0
    for n in nums {
        if gas < 0 {
            return false
        } else if n > gas {
            gas = n
        }
        gas -= 1
    }
    return true
}
