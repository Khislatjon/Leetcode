//
//  XorOperation.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 1486. XOR Operation in an Array

func xorOperation(_ n: Int, _ start: Int) -> Int {
    var arr: [Int] = []
    var res = 0
    for i in 0..<n {
        let el = start + 2*i
        arr.append(el)
        res ^= el
    }
    return res
}
