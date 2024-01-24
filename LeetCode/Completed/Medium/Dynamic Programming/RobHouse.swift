//
//  RobHouse.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 21/01/24.
//

import Foundation

// MARK: - 198. House Robber

func rob(_ nums: [Int]) -> Int {
    var prev = 0, current = 0
    for num in nums {
        let temp = prev
        prev = current
        current = max(num + temp, prev)
    }
    return current
}


