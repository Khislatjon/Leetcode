//
//  NumSteps.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/05/24.
//

import Foundation

// MARK: - 1404. Number of Steps to Reduce a Number in Binary Representation to One

func numSteps(_ s: String) -> Int {
    var s = Array(s)
    var count = 0
    
    while s.count != 1 {
        if s.last == "1" {
            var i = s.count - 1
            while i >= 0 && s[i] != "0" {
                s[i] = "0"
                i -= 1
            }
            if i == -1 {
                s.insert("1", at: 0)
            } else {
                s[i] = "1"
            }
        } else {
            s.removeLast()
        }
        count += 1
    }
    return count
}
