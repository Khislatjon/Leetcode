//
//  MinBitFlips.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 2220. Minimum Bit Flips to Convert Number

func minBitFlips(_ start: Int, _ goal: Int) -> Int {
    var diff = 0
    for i in 0..<32 {
        let a = (start >> i) & 1
        let b = (goal >> i) & 1
        if a != b {
            diff += 1
        }
    }
    return diff
}
