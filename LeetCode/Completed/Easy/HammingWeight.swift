//
//  HammingWeight.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/09/22.
//

import Foundation

// MARK: - 191. Number of 1 Bits

func hammingWeight(_ n: Int) -> Int {
    var num = n
    var output = 0
    while num != 0 {
        if (num & 1) > 0 {
            output += 1
        }
        num >>= 1
    }
    return output
}
