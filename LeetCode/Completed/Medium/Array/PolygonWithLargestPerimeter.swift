//
//  PolygonWithLargestPerimeter.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/02/24.
//

import Foundation

// MARK: - 2971. Find Polygon With the Largest Perimeter

func largestPerimeter(_ nums: [Int]) -> Int {
    var sides = 0
    var sum = nums.reduce(0, +)
    let sorted = nums.sorted { $0 > $1 }
    
    for num in sorted {
        if sum - num > num {
            sides += 1
        } else {
            sum -= num
        }
    }
    return sides >= 3 ? sum : -1
}
