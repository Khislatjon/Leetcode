//
//  2516. Take K of Each Character From Left and Right.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/11/2024.
//

import Foundation

// MARK: - 2516. Take K of Each Character From Left and Right

func takeCharacters(_ s: String, _ k: Int) -> Int {
    var count: [Int] = [0,0,0]
    for ch in s {
        count[Int(ch.asciiValue! - Character("a").asciiValue!)] += 1
    }
    if count.min()! < k {
        return -1
    }
    
    var l = 0
    var res = Int.max
    let arrS = Array(s)
    for r in arrS.indices {
        count[Int(arrS[r].asciiValue! - Character("a").asciiValue!)] -= 1
        while count.min()! < k {
            count[Int(arrS[l].asciiValue! - Character("a").asciiValue!)] += 1
            l += 1
        }
        res = min(res, arrS.count - (r - l + 1))
    }
    return res
}
