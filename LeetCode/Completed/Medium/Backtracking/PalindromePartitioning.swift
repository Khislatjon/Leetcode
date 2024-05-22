//
//  PalindromePartitioning.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/05/24.
//

import Foundation

// MARK: - 131. Palindrome Partitioning

class PalindromePartitioning {
    func partition(_ s: String) -> [[String]] {
        let arr = Array(s)
        var result: [[String]] = []
        var partition: [String] = []
        
        func dfs(_ i: Int) {
            if i >= arr.count {
                result.append(partition)
                return
            }
            for j in i..<arr.count {
                if isPalindrome(arr, i, j) {
                    partition.append(String(arr[i...j]))
                    dfs(j+1)
                    partition.removeLast()
                }
            }
        }
        
        dfs(0)
        
        return result
    }
    
    func isPalindrome(_ arr: [String.Element], _ l: Int, _ r: Int) -> Bool {
        var i = l
        var j = r
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
