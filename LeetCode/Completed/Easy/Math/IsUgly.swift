//
//  IsUgly.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/02/24.
//

import Foundation

// MARK: - 263. Ugly Number

func isUgly(_ n: Int) -> Bool {
    if n < 1 { return false }
    var num = n
    while num % 2 == 0 { num /= 2 }
    while num % 3 == 0 { num /= 3 }
    while num % 5 == 0 { num /= 5 }
    return num == 1
}
