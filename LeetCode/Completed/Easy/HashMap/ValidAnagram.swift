//
//  ValidAnagram.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

// MARK: - 242. Valid Anagram

func isAnagram(_ s: String, _ t: String) -> Bool {
    var dict: [Character: Int] = [:]
    for ch in s {
        dict[ch, default: 0] += 1
    }
    
    for ch in t {
        dict[ch, default: 0] -= 1
        if dict[ch] == 0 {
            dict.removeValue(forKey: ch)
        }
    }
    return dict.isEmpty
}
