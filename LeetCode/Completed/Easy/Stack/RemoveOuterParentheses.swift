//
//  RemoveOuterParentheses.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 25/10/22.
//

import Foundation

// MARK: - 1021. Remove Outermost Parentheses

func removeOuterParentheses(_ s: String) -> String {
    var count = 0
    var result = ""
    
    for ch in s {
        if ch == "(" {
            if count > 0 { result.append(ch) }
            count += 1
        } else {
            count -= 1
            if count > 0 { result.append(ch) }
        }
    }
    return result
}
