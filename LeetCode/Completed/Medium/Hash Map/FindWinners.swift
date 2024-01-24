//
//  FindWinners.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/01/24.
//

import Foundation

// MARK: - 2225. Find Players With Zero or One Losses

func findWinners(_ matches: [[Int]]) -> [[Int]] {
    guard !matches.isEmpty else { return [[]] }
    
    var result: [[Int]] = [[], []]
    var wins: [Int: Int] = [:]
    var loses: [Int: Int] = [:]
    
    for match in matches {
        wins[match[0], default: 0] += 1
        loses[match[1], default: 0] += 1
    }
    
    for dict in wins {
        if loses[dict.key] == nil {
            result[0].append(dict.key)
        }
    }
    
    for dict in loses {
        if loses[dict.key] == 1 {
            result[1].append(dict.key)
        }
    }
    
    result[0].sort()
    result[1].sort()
    
    return result
}
