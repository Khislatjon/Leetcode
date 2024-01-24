//
//  SingleNumber.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 137. Single Number II

func singleNumber(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for n in nums {
        dict[n, default: 0] += 1
    }
    
    for d in dict {
        if d.value == 1 {
            return d.key
        }
    }
    
    return 0
}
