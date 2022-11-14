//
//  CountNegatives.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/10/22.
//

import Foundation

// MARK: - 1351. Count Negative Numbers in a Sorted Matrix

func countNegatives(_ grid: [[Int]]) -> Int {
    var res = 0
    for row in grid {
        var left = 0
        var right = row.count - 1
        var index = row.count
        while left <= right {
            let mid = (left + right) / 2
            
            if row[mid] < 0 {
                index = mid
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        res += (row.count - index)
    }
    return res
}
