//
//  IsPowerOfTwo.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 25/09/22.
//

import Foundation

// MARK: - 231. Power of Two

func isPowerOfTwo(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    
    for i in 0...31 {
        let power = Int(truncating: NSDecimalNumber(decimal: pow(2, i)))
        if power == n {
            return true
        } else if power > n {
            return false
        }
    }
    return false
}
