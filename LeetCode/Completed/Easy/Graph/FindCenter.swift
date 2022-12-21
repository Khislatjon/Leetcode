//
//  FindCenter.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/11/22.
//

import Foundation

// MARK: - 1791. Find Center of Star Graph

func findCenter(_ edges: [[Int]]) -> Int {
    var dict = [Int: Int]()
    var max = 1
    for edge in edges {
        dict[edge[0], default: 0] += 1
        dict[edge[1], default: 0] += 1
    }
    for (k, v) in dict {
        print("key = \(k)")
        print("value = \(v)")
        
        if let maxValue = dict[max], maxValue < v {
            max = k
        }
    }
    return max
}
