//
//  AddDigits.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/09/22.
//

import Foundation

// MARK: - 258. Add Digits

func addDigits(_ num: Int) -> Int {
    var n = num
    var sum = 0
    
    while n != 0 {
        sum += n % 10
        n /= 10
    }
    
    if sum > 9 {
        sum = addDigits(sum)
    }
    return sum
}
