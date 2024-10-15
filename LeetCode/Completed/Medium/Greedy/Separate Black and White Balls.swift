//
//  Separate Black and White Balls.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/10/2024.
//

import Foundation

// MARK: - 2938. Separate Black and White Balls

func minimumSteps(_ s: String) -> Int {
    var result = 0
    var blacks = 0
    for ch in s {
        if ch == "1" {
            blacks += 1
        } else {
            result += blacks
        }
    }
    return result
}
