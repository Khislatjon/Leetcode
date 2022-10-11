//
//  MaxNumberOfBalloons.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/09/22.
//

import Foundation

// MARK: - 1189. Maximum Number of Balloons

func maxNumberOfBalloons(_ text: String) -> Int {
    var b = 0, a = 0, l = 0, o = 0, n = 0
    
    for char in text {
        switch char {
        case "b": b += 1
        case "a": a += 1
        case "l": l += 1
        case "o": o += 1
        case "n": n += 1
        default: continue
        }
    }
    
    l /= 2
    o /= 2
    
    return min(b, a, l, o, n)
}
