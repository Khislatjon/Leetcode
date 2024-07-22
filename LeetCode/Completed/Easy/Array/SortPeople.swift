//
//  SortPeople.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/07/24.
//

import Foundation

// MARK: - 2418. Sort the People

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    var dict: [Int: Int] = [:]
    var result: [String] = []
    for (i, height) in heights.enumerated() {
        dict[height] = i
    }
    
    let sortedHeights = heights.sorted(by: >)
    for sortedHeight in sortedHeights {
        if let index = dict[sortedHeight] {
            result.append(names[index])
        }
    }
    return result
}
