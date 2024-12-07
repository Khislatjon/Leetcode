//
//  LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/12/2024.
//

import Foundation

// MARK: - 14. Longest Common Prefix

func longestCommonPrefix(_ strs: [String]) -> String {
    guard !strs.isEmpty else { return "" }
    var cur = strs[0]
    for str in strs {
        while !str.hasPrefix(cur) {
            cur.removeLast()
        }
    }
    return cur
}

//let prefix = longestCommonPrefix(["ab", "absg"])
//print(prefix)
