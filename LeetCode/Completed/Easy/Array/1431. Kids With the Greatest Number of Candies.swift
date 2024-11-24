//
//  1431. Kids With the Greatest Number of Candies.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/11/2024.
//

import Foundation

// MARK: - 1431. Kids With the Greatest Number of Candies

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let max = candies.max() ?? 0
    return candies.map({ $0 + extraCandies > max })
}
