//
//  FinalPrices.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/10/22.
//

import Foundation

// MARK: - 1475. Final Prices With a Special Discount in a Shop

func finalPrices(_ prices: [Int]) -> [Int] {
    var stack = [Int]()
    var result = prices
    
    for i in prices.indices {
        while !stack.isEmpty && result[stack.last!] >= prices[i] {
            result[stack.last!] = result[stack.last!] - prices[i]
            stack.popLast()
        }
        stack.append(i)
    }
    return result
}
