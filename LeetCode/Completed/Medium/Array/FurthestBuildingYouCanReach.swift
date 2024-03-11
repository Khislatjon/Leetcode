//
//  FurthestBuildingYouCanReach.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/02/24.
//

import Foundation

// MARK: - 1642. Furthest Building You Can Reach

func furthestBuilding(_ heights: [Int], _ bricks: Int, _ ladders: Int) -> Int {
    var usedBricks = MaxHeap()
    var bricks = bricks
    var ladders = ladders
    
    for i in 0..<heights.count-1 {
        let diff = heights[i+1] - heights[i]
        guard diff > 0 else { continue }
        
        bricks -= diff
        usedBricks.add(diff)
        
        if bricks < 0 {
            if ladders == 0 {
                return i
            }
            ladders -= 1
            bricks += usedBricks.poll()
        }
    }
    return heights.count-1 
}
