//
//  MergeIntervals.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/02/24.
//

import Foundation

// MARK: - 56. Merge Intervals

func merge(_ intervals: [[Int]]) -> [[Int]] {
    var intervals = intervals.sorted(by: { $0[0] < $1[0] })
    var returnIntervals = [intervals.first!]
    
    for i in 1..<intervals.count {
        if returnIntervals.last![1] < intervals[i][0] {
            returnIntervals.append(intervals[i])
        } else {
            let newInterval = [returnIntervals.last![0], max(returnIntervals.last![1], intervals[i][1])]
            returnIntervals.removeLast()
            returnIntervals.append(newInterval)
        }
    }
    
    return returnIntervals
}
