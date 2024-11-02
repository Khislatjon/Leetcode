//
//  IsSubsequence.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/2024.
//

import Foundation

// MARK: - 392. Is Subsequence

func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard !s.isEmpty else { return true }
    let s = Array(s)
    let t = Array(t)
    var sPtr = 0
    for c in t {
        if s[sPtr] == c {
            sPtr += 1
            if sPtr >= s.count {
                return true
            }
        }
    }
    return false
}
