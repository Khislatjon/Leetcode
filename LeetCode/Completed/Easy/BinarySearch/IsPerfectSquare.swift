//
//  IsPerfectSquare.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/10/22.
//

import Foundation

// MARK: - 367. Valid Perfect Square

// Newton's Law
func isPerfectSquare(_ num: Int) -> Bool {
    var r = num
    while r * r > num {
        r = (r + num / r) / 2
    }
    return r * r == num
}


//1 = 1
//1 + 3 = 4
//1 + 3 + 5 = 9
//1 + 3 + 5 + 7 = 16
func isPerfectSquare2(_ num: Int) -> Bool {
    var i = 1
    var n = num
    while n > 0 {
        n -= i
        i += 2
        guard n != 0 else { return true }
    }
    return false
}
