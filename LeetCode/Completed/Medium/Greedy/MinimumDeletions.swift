//
//  MinimumDeletions.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/07/24.
//

import Foundation

// MARK: - 1653. Minimum Deletions to Make String Balanced

func minimumDeletions(_ s: String) -> Int {
    var aCount = 0
    var bCount = 0
    var result = s.count
    
    for ch in s {
        if ch == "a" {
            aCount += 1
        }
    }
    
    for (i, ch) in s.enumerated() {
        if ch == "a" {
            aCount -= 1
        }
        result = min(result, aCount + bCount)
        if ch == "b" {
            bCount += 1
        }
    }
    return result
}
