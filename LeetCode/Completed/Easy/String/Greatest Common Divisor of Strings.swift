//
//  Greatest Common Divisor of Strings.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

// MARK: - 1071. Greatest Common Divisor of Strings

class GCDOfStrings {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        let gcd = gcd(max(str1.count, str2.count), min(str1.count, str2.count))
        let range = str1.startIndex..<str1.index(str1.startIndex, offsetBy: gcd)
        return str1 + str2 == str2 + str1 ? String(str1[range]) : ""
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        a % b == 0 ? b : gcd(b, a % b)
    }
}
