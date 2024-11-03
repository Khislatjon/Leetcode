//
//  Rotate String.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/11/2024.
//

import Foundation

// MARK: - 796. Rotate String

func rotateString(_ s: String, _ goal: String) -> Bool {
    let doubleString = s + s
    let end = s.count
    for i in s.indices {
        if doubleString[i..<doubleString.index(i, offsetBy: end)] == goal {
            return true
        }
    }
    return false
}


