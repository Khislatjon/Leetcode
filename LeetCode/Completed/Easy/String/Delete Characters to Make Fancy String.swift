//
//  Delete Characters to Make Fancy String.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

// MARK: - 1957. Delete Characters to Make Fancy String

func makeFancyString(_ s: String) -> String {
    guard s.count > 2 else { return s }
    var first: Character?
    var second: Character?
    var result = ""
    for ch in s {
        if first == second && second == ch {
            continue
        } else {
            first = second
            second = ch
            result.append(ch)
        }
    }
    return result
}
