//
//  CheckAlmostEquivalent.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/10/22.
//

import Foundation

// MARK: - 2068. Check Whether Two Strings are Almost Equivalent

func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
    var dict = [Character : Int]()
    
    for ch in word1 {
        dict[ch, default: 0] += 1
    }
    for ch in word2 {
        dict[ch, default: 0] -= 1
    }
    
    for val in dict.values {
        if abs(val) > 3 {
            return false
        }
    }
    return true
}
