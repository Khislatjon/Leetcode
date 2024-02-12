//
//  PalindromicSubstrings.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 10/02/24.
//

import Foundation

// MARK: - 647. Palindromic Substrings

// Time complexity: N^2
class PalindromicSubstrings {
    var arr: [String.Element] = []
    func countSubstrings(_ s: String) -> Int {
        arr = Array(s)
        var count = 0
        for i in 0..<arr.count {
            count += countPalindrome(i, i)      // odd palindromes
            count += countPalindrome(i, i+1)    // even palindromes
        }
        return count
    }
    
    private func countPalindrome(_ l: Int, _ r: Int) -> Int {
        var res = 0
        var l = l
        var r = r
        while l >= 0 && r < arr.count && arr[l] == arr[r] {
            res += 1
            l -= 1
            r += 1
        }
        return res
    }
}

// Time complexity: N^3
class PalindromicSubstrings2 {
    var arr: [String.Element] = []
    func countSubstrings(_ s: String) -> Int {
        arr = Array(s)
        var count = 0
        for i in 0..<arr.count {
            for j in i..<arr.count {
                if isPalindrome(i, j) {
                    count += 1
                }
            }
        }
        return count
    }
    
    private func isPalindrome(_ i: Int, _ j: Int) -> Bool {
        guard i != j else { return true }
        var i = i
        var j = j
        
        while i < j {
            if arr[i] != arr[j] {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}


