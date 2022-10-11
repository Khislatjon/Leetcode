//
//  KthDistinctString.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/09/22.
//

import Foundation

// MARK: - 2053. Kth Distinct String in an Array

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var dict = [String: Int]()
    arr.forEach { dict[$0, default: 0] += 1 }
    var counter = k
    
    for item in arr {
        if dict[item] == 1 { counter -= 1 }
        if counter == 0 { return item }
    }
    return ""
}
