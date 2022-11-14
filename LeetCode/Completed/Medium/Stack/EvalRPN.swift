//
//  EvalRPN.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/10/22.
//

import Foundation

// MARK: - 150. Evaluate Reverse Polish Notation

func evalRPN(_ tokens: [String]) -> Int {
    var stack = [Int]()
    for ch in tokens {
        switch ch {
        case "+":
            calculate(&stack, +)
        case "-":
            calculate(&stack, -)
        case "*":
            calculate(&stack, *)
        case "/":
            calculate(&stack, /)
        default:
            if let n = Int(ch) {
                stack.append(n)
            }
        }
    }
    return stack.first ?? 0
}

func calculate(_ stack: inout [Int], _ operation: ((Int, Int) -> Int)) {
    if let last1 = stack.popLast(), let last2 = stack.popLast() {
        stack.append(operation(last2, last1))
    }
}
