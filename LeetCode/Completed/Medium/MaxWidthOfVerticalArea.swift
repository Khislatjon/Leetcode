//
//  MaxWidthOfVerticalArea.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/09/22.
//

import Foundation

// MARK: - 1637. Widest Vertical Area Between Two Points Containing No Points

func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
    var xPoints = [Int]()
    var max = 0
    
    for point in points {
        xPoints.append(point[0])
    }
    
    let sorted = xPoints.sorted()
    for i in 0..<sorted.count - 1 {
        if sorted[i + 1] - sorted[i] > max {
            max = sorted[i + 1] - sorted[i]
        }
    }
    return max
}
