//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/12/2024.
//

import Foundation

// MARK: - 20. Valid Parentheses

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for ch in s {
        switch ch {
        case "(", "{", "[":
            stack.append(ch)
        case ")":
            if stack.popLast() != "(" { return false }
        case "}":
            if stack.popLast() != "{" { return false }
        case "]":
            if stack.popLast() != "[" { return false }
        default:
            continue
        }
    }
    return stack.isEmpty
}
