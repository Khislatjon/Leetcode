//
//  FindTheDifference.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/11/22.
//

import Foundation

// MARK: - 389. Find the Difference

func findTheDifference(_ s: String, _ t: String) -> Character {
    var dict = [Character: Int]()
    
    for ch in s {
        dict[ch, default: 0] += 1
    }
    for ch in t {
        dict[ch, default: 0] -= 1
    }
    
    for (key, value) in dict {
        if value == -1 {
            return key
        }
    }
    return Character("")
}
