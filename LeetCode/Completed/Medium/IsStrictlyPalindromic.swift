//
//  IsStrictlyPalindromic.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/11/22.
//

import Foundation

// MARK: - 2396. Strictly Palindromic Number

func isStrictlyPalindromic(_ n: Int) -> Bool {
    for base in 2..<n-1 {
        let baseValue = getNum(with: base, n: n)
        if !isPalindrome(baseValue) {
            return false
        }
    }
    return true
}

func getNum(with base: Int, n: Int) -> String {
    var num = n
    var res = ""
    while num >= base {
        res += String(num % base)
        num /= base
    }
    res += String(num % base)
    return String(res.reversed())
}

func isPalindrome(_ str: String) -> Bool {
    guard let x = Int(str) else { return false }
    guard x >= 0 else { return false }
    var rev = 0
    var n = x
    
    while n > 0 {
        rev = rev * 10 + (n % 10)
        n /= 10
    }
    return rev == x
}
