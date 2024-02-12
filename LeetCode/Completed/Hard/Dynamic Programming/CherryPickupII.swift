//
//  CherryPickupII.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/02/24.
//

import Foundation

// MARK: - 1463. Cherry Pickup II

func cherryPickup(_ grid: [[Int]]) -> Int {
    var ROWS = grid.count
    var COLS = grid[0].count
    var cache: [[Int]: Int] = [:]
    
    func dfs(_ r: Int, _ c1: Int, _ c2: Int) -> Int {
        if let v = cache[[r, c1, c2]] {
            return v
        }
        if c1 == c2 || min(c1, c2) < 0 || max(c1, c2) >= COLS {
            return 0
        }
        if r == ROWS - 1 {
            return grid[r][c1] + grid[r][c2]
        }
        
        var res = 0
        for c1_d in [-1, 0, 1] {
            for c2_d in [-1, 0, 1] {
                res = max(res, dfs(r+1, c1+c1_d, c2+c2_d))
            }
        }
        cache[[r, c1, c2]] = res + grid[r][c1] + grid[r][c2]
        return cache[[r, c1, c2]]!
    }
    
    return dfs(0, 0, COLS-1)
}
