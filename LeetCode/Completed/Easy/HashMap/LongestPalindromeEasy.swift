//
//  LongestPalindrome.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/06/24.
//

import Foundation

// MARK: - 409. Longest Palindrome

class LongestPalindrome {
    func longestPalindrome(_ s: String) -> Int {
        var sum = 0
        var dict: [Character: Int] = [:]
        var hasOdd = false
        
        for ch in s {
            dict[ch, default: 0] += 1
        }
        
        for d in dict {
            if d.value % 2 == 0 {
                sum += d.value
            } else {
                sum += (d.value - 1)
                hasOdd = true
            }
        }
        
        if hasOdd {
            sum += 1
        }
        return sum
    }
}
