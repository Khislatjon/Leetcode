//
//  Best Time to Buy and Sell Stock II.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/2024.
//

import Foundation

// MARK: - 122. Best Time to Buy and Sell Stock II

class BestTimeBuySellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var profit = 0
        for i in 1..<prices.count {
            profit += max(0, prices[i] - prices[i-1])
        }
        return profit
    }
}
