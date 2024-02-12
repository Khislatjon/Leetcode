//
//  BasicCalculatorII.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 10/02/24.
//

import Foundation

// MARK: - 227. Basic Calculator II
// 1. Go through operation from left to right
// 2. If *, / is encountered undo last operation(+,-) and after *,/ add back
// When storing number if prev operation was - store current number as - and always use + to undo

func calculate(_ s: String) -> Int {
    var res = 0, cur = 0, prev = 0, i = 0
    var curOperation: Character = "+"
    let arr = Array(s)
    
    while i < arr.count {
        if arr[i].isNumber {
            while i < arr.count && arr[i].isNumber {
                cur = cur * 10 + Int(String(arr[i]))!
                i += 1
            }
            i -= 1
            
            switch curOperation {
            case "+":
                res += cur
                prev = cur
            case "-":
                res -= cur
                prev = -cur
            case "*":
                res -= prev
                res += prev * cur
                prev = prev * cur
            case "/":
                res -= prev
                res += prev / cur
                prev = prev / cur
            default:
                break
            }
            cur = 0
        } else if arr[i] != " " {
            curOperation = arr[i]
        }
        i += 1
    }
    
    return res
}
