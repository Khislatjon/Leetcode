//
//  FindKthPositive.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/10/22.
//

import Foundation

// MARK: - 1539. Kth Missing Positive Number

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var left = 0
    var right = arr.count
    while left < right {
        let mid = (left + right) / 2
        if arr[mid] - (mid + 1) < k {
            left = left + 1
        } else {
            right = mid
        }
    }
    return left + k
}
