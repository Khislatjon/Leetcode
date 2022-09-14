//
//  LongestPalindrome.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 10/09/22.
//

import Foundation

// MARK: - 5. Longest Palindromic Substring
// Time limit exceeded. Works in java

func longestPalindrome(_ s: String) -> String {
    guard !s.isEmpty else { return "" }
    
    var start = 0
    var end = 0
    for i in 0..<s.count {
        let length1 = expandFromMiddle(s: s, left: i, right: i)
        let length2 = expandFromMiddle(s: s, left: i, right: i + 1)
        let length = length1 > length2 ? length1 : length2
        
        if length > end - start {
            start = i - ((length - 1) / 2)
            end = i + (length / 2)
        }
    }
    return s[start..<end + 1]
}

func expandFromMiddle(s: String, left: Int, right: Int) -> Int {
    guard !s.isEmpty, left <= right else { return 0 }
    var l = left
    var r = right
    while l >= 0 && r < s.count && s[l] == s[r] {
        l -= 1
        r += 1
    }
    return r - l - 1
}

//let a = "aabbaacdfer"
//print(longestPalindrome(a))
