//
//  DefuseBomb.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/01/24.
//

import Foundation

// MARK: - 1652. Defuse the Bomb

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    guard k != 0 else { return Array(repeating: 0, count: code.count) }
    
    var result: [Int] = []
    var start = 1, end = k, curSum = 0
    
    if k < 0 {
        start = code.count + k
        end = code.count - 1
    }
    
    for i in start...end {
        curSum += code[i]
    }
    
    for i in code.indices {
        result.append(curSum)
        curSum -= code[start % code.count]
        start += 1
        end += 1
        curSum += code[end % code.count]
    }
    return result
}
            
