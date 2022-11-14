//
//  CalPoints.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/10/22.
//

import Foundation

// MARK: - 682. Baseball Game

func calPoints(_ operations: [String]) -> Int {
    var stack = [Int]()
    for ch in operations {
        switch ch {
        case "+":
            stack.append(stack[stack.count - 1] + stack[stack.count - 2])
        case "D":
            stack.append(stack[stack.count - 1] * 2)
        case "C":
            stack.removeLast()
        default:
            if let n = Int(ch) {
                stack.append(n)
            }
        }
    }
    return stack.reduce(0, +)
}
