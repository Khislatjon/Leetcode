//
//  SingleNumberIII.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/06/24.
//

import Foundation

// MARK: - 260. Single Number III

func singleNumber(_ nums: [Int]) -> [Int] {
    var xor = 0
    for num in nums {
        xor ^= num
    }
    
    let diff = xor & (-xor)
    var res = [0, 0]
    for num in nums {
        if (num & diff) == 0 {
            res[0] ^= num
        } else {
            res[1] ^= num
        }
    }
    
    return res
}
    
