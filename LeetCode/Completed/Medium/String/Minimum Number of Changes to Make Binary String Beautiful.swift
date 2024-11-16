//
//  Minimum Number of Changes to Make Binary String Beautiful.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/11/2024.
//

import Foundation

// MARK: - 2914. Minimum Number of Changes to Make Binary String Beautiful
func minChanges(_ s: String) -> Int {
    let arr = Array(s)
    var count = 0
    for i in stride(from: 0, to: arr.count, by: 2) {
        if arr[i] != arr[i + 1] {
            count += 1
        }
    }
    return count
}
