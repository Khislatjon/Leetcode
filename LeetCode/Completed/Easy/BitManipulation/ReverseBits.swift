//
//  ReverseBits.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 190. Reverse Bits

func reverseBits(_ n: Int) -> Int {
    var res = 0
    for i in 0..<32 {
        let bit = (n >> i) & 1
        res |= bit << (31-i)
    }
    return res
}
