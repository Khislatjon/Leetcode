//
//  UniqueOccurrences.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/01/24.
//

import Foundation

// MARK: - 1207. Unique Number of Occurrences

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict: [Int: Int] = [:]
    var val: [Int: Int] = [:]
    
    for v in arr {
        dict[v, default: 0] += 1
    }
    
    for d in dict {
        if val[d.value] == nil {
            val[d.value] = 1
        } else {
            return false
        }
    }
    
    return true
}
