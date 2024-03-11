//
//  FindFirstPalindromicString.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/02/24.
//

import Foundation

// MARK: - 2108. Find First Palindromic String in the Array

func firstPalindrome(_ words: [String]) -> String {
    for word in words {
        if isPalindrome(Array(word)) {
            return word
        }
    }
    return ""
}

private func isPalindrome(_ arr: [Character]) -> Bool {
    var i = 0
    var j = arr.count-1
    
    while i < j {
        if arr[i] != arr[j] {
            return false
        }
        i += 1
        j -= 1
    }
    return true
}
