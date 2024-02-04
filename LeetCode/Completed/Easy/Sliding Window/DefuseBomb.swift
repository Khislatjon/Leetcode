//
//  DefuseBomb.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/01/24.
//

import Foundation

// MARK: - 1652. Defuse the Bomb

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    if k == 0 {
        return Array(repeating: 0, count: code.count)
    }
    
    var arr = code
    let absK = abs(k)
    
    // sliding window
    var total = 0
    for temp in 1...absK {
        let j = k > 0 ? (temp) : (code.count - temp)
        total += code[j % code.count]
    }
    arr[0] = total
    
    for i in 1..<code.count {
        if k > 0 {
            total -= code[i]
            total += code[(i+k) % code.count]
        } else {
            total -= code[(code.count + i - absK - 1) % code.count]
            total += code[i-1]
        }
        arr[i] = total
    }
    return arr
}
            
