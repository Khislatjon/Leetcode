//
//  NumOfStrings.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/09/22.
//

import Foundation

// MARK: - 1967. Number of Strings That Appear as Substrings in Word

func numOfStrings(_ patterns: [String], _ word: String) -> Int {
    var count = 0
    for pattern in patterns {
        if word.contains(pattern) {
            count += 1
        }
    }
    return count
}
