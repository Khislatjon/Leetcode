//
//  MaximumWealth.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/11/22.
//

import Foundation

// MARK: - 1672. Richest Customer Wealth

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var result = 0
    for account in accounts {
        result = max(result, account.reduce(0, +))
    }
    return result
}
