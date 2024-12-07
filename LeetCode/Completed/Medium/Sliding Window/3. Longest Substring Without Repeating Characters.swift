//
//  3. Longest Substring Without Repeating Characters.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/12/2024.
//

import Foundation

// MARK: - 3. Longest Substring Without Repeating Characters

func lengthOfLongestSubstring(_ s: String) -> Int {
    var l = 0
    let arr = Array(s)
    var dict: [String.Element: Int] = [:]
    var maxCount = 0
    for r in arr.indices {
        if let _ = dict[arr[r]] {
            while let count = dict[arr[r]] {
                dict[arr[l], default: 0] -= 1
                if dict[arr[l], default: 0] == 0 { dict.removeValue(forKey: arr[l]) }
                l += 1
            }
        }
        dict[arr[r], default: 0] += 1
        maxCount = max(maxCount, r-l+1)
    }
    return maxCount
}
