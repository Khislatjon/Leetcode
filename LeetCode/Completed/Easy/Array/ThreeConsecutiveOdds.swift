//
//  ThreeConsecutiveOdds.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/07/24.
//

import Foundation

// MARK: - 1550. Three Consecutive Odds

func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    var i = 0
    for el in arr {
        i = el.isMultiple(of: 2) ? 0 : i+1
        if i == 3 { return true }
    }
    return false
}
