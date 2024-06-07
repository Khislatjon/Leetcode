//
//  ScoreOfString.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/06/24.
//

import Foundation

// MARK: - 3110. Score of a String

func scoreOfString(_ s: String) -> Int {
    var result = 0
    let arr = Array(s)
    
    for i in 1..<arr.count {
        result += abs(Int(arr[i].asciiValue!) - Int(arr[i-1].asciiValue!))
    }
    
    return result
}
