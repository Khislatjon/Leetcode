//
//  Sqrt.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/09/22.
//

import Foundation

// MARK: - 69. Sqrt(x)

func mySqrt(_ x: Int) -> Int {
    var r = x
    while r*r > x {
        r = (r + x/r) / 2
    }
    return r
}
