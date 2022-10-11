//
//  ConvertToBase7.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/09/22.
//

import Foundation

// MARK: - 504. Base 7

func convertToBase7(_ num: Int) -> String {
    var n = num
    var result = ""
    
    if n < 0 {
        n *= -1
    }
    
    while n >= 7 {
        result = "\(n % 7)" + result
        n /= 7
    }
    result = "\(n)" + result
    if num < 0 {
        result = "-" + result
    }
    return result
}
