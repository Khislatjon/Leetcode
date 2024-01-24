//
//  RangeBitwiseAnd.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 201. Bitwise AND of Numbers Range
// Common prefix and that will be the answer

func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
    var diff = 0
    var n = left
    var m = right
    
    while n != m {
        n >>= 1
        m >>= 1
        diff += 1
    }
    
    n <<= diff
    return n
}
