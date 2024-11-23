//
//  Maximum Number of Vowels in a Substring of Given Length.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

// MARK: - 1456. Maximum Number of Vowels in a Substring of Given Length

func maxVowels(_ s: String, _ k: Int) -> Int {
    let arr = Array(s)
    var count = Int.min
    var l = 0
    let vowels: [String.Element] = ["a", "e", "i", "o", "u"]
    var currentCount = 0
    
    for r in arr.indices {
        if vowels.contains(arr[r]) { currentCount += 1 }
        if r - l + 1 == k {
            count = max(count, currentCount)
            if vowels.contains(arr[l]) { currentCount -= 1 }
            l += 1
        }
    }
    return count
}
