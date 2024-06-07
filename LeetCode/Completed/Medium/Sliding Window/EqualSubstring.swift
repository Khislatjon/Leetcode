//
//  EqualSubstring.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/05/24.
//

import Foundation

// MARK: - 1208. Get Equal Substrings Within Budget

func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    var curCost = 0
    var l = 0
    var result = 0
    
    var sArray = Array(s)
    var tArray = Array(t)
    
    for r in 0..<sArray.count {
        curCost += abs(Int(sArray[r].asciiValue!) - Int(tArray[r].asciiValue!))
        
        while curCost > maxCost {
            curCost -= abs(Int(sArray[l].asciiValue!) - Int(tArray[l].asciiValue!))
            l += 1
        }
        
        result = max(result, r - l + 1)
    }
    return result
}
