//
//  BackspaceCompare.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 25/10/22.
//

import Foundation

// MARK: - 844. Backspace String Compare

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var stack1 = [Character]()
    var stack2 = [Character]()
    
    for ch in s {
        if ch == "#" {
            stack1.popLast()
        } else {
            stack1.append(ch)
        }
    }
    
    for ch in t {
        if ch == "#" {
            stack2.popLast()
        } else {
            stack2.append(ch)
        }
    }
    return stack1 == stack2
}
