//
//  H-Index.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/11/2024.
//

import Foundation

// MARK: - 274. H-Index

func hIndex(_ citations: [Int]) -> Int {
    var citationsCount: [Int: Int] = [:]
    var sorted: [Int] = []
    var hIndex = 0
    
    for citation in citations {
        if citation >= citations.count {
            citationsCount[citations.count, default: 0] += 1
        } else {
            citationsCount[citation, default: 0] += 1
        }
    }
    
    for i in 0...citations.count {
        if let count = citationsCount[i] {
            sorted.append(contentsOf: Array(repeating: i, count: count))
        }
    }
    
    for index in stride(from: sorted.count-1, through: 0, by: -1) {
        if sorted[index] >= sorted.count - index {
            hIndex += 1
        } else {
            break
        }
    }
    
    return hIndex
}
