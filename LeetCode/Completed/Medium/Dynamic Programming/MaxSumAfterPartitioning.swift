//
//  MaxSumAfterPartitioning.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/02/24.
//

import Foundation

// MARK: - 1043. Partition Array for Maximum Sum

class MaxSumAfterPartitioning {
    func maxSumAfterPartitioning(_ arr: [Int], _ k: Int) -> Int {
        var dict: [Int: Int] = [:]
        
        func helper(_ i: Int) -> Int {
            if let v = dict[i] { return v }
            var curMax = 0
            var res = 0
            
            for j in i..<min(arr.count, i+k) {
                curMax = max(curMax, arr[j])
                let windowSize = j-i+1
                res = max(res, helper(j+1) + curMax * windowSize)
            }
            dict[i] = res
            return res
        }
        
        return helper(0)
    }
}
