//
//  ScoreOfParentheses.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 21/10/22.
//

import Foundation

// MARK: - 856. Score of Parentheses

func scoreOfParentheses(_ s: String) -> Int {
    var stack = [Int]()
    var score = 0
    
    for ch in s {
        if ch == "(" {
            stack.append(score)
            score = 0
        } else {
            score = stack.popLast()! + max(score * 2, 1)
        }
    }
    return score
}
