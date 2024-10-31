//
//  MaxProfit.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/2024.
//

import Foundation

// MARK: - 121. Best Time to Buy and Sell Stock

func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else { return -0 }
    var buy = prices[0]
    var profit = 0
    
    for price in prices {
        profit = max(profit, price - buy)
        
        if price < buy {
            buy = price
        }
    }
    return profit
}
