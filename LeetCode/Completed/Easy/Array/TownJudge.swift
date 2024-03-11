//
//  TownJudge.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/02/24.
//

import Foundation

// MARK: - 997. Find the Town Judge

func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
    guard !trust.isEmpty else { return n == 1 ? 1 : -1 }
    var dict: [Int: Int] = [:]
    
    for t in trust {
        dict[t[0], default: 0] -= 1
        dict[t[1], default: 0] += 1
    }
    
    for d in dict {
        if dict[d.key] == n-1 {
            return d.key
        }
    }
    
    return -1
}
