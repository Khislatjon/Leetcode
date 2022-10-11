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
    var right = arr.count - 1
    var res = 0
    while left <= right {
        let mid = (left + right) / 2
        if arr[mid] - (mid + 1) == k {
            // move left
            right = mid - 1
            if arr[mid] - arr[right] > 0 {
                res = arr[mid] - 1
            }
        } else if arr[mid] - (mid + 1) > k {
            right = mid - 1
        } else {
            left = left + 1
        }
    }
    // handle greater case
    return res
}
