//
//  Number of Islands.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/02/24.
//

import Foundation

// MARK: - 200. Number of Islands

// Steps:
// 1. If "1" faced create dfs
// 2. Save visited tuples
// 3.

func numIslands(_ grid: [[Character]]) -> Int {
    guard !grid.isEmpty else { return 0 }
    let rows = grid.count, cols = grid[0].count
    var count = 0
    var visited = Set<Array<Int>>()
    
    func dfs(_ i: Int, _ j: Int) {
        visited.insert([i, j])
        
        let arr = [[0, 1], [0, -1], [1, 0], [-1, 0]]
        for el in arr {
            let i = i + el[0]
            let j = j + el[1]
            if i >= 0, i < rows, j >= 0, j < cols,
               grid[i][j] == "1", !visited.contains([i,j]) {
                dfs(i, j)
            }
        }
    }
    
    for i in 0..<rows {
        for j in 0..<cols {
            if grid[i][j] == "1", !visited.contains([i,j]) {
                count += 1
                dfs(i, j)
            }
        }
    }
    
    
    return count
}
