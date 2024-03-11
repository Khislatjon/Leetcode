//
//  SurroundedRegions.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/02/24.
//

import Foundation

// MARK: - 130. Surrounded Regions

// Steps
// 1. Capture unsurrounded regions (O->T) use DFS
// 2. Change surrounded O into X
// 3. Change Ts to O back

func solve(_ board: inout [[Character]]) {
    guard !board.isEmpty else { return }
    
    let rows = board.count, cols = board[0].count
    
    func dfs(_ i: Int, _ j: Int, _ board: inout [[Character]]) {
        let arr = [[1,0], [-1,0], [0,1], [0,-1]]
        for el in arr {
            let i = i + el[0]
            let j = j + el[1]
            if i >= 0, i < rows, j >= 0, j < cols, board[i][j] == "O" {
                board[i][j] = "T"
                dfs(i, j, &board)
            }
        }
    }
    
    for i in [0, rows-1] {
        for j in 0..<cols {
            if board[i][j] == "O" {
                board[i][j] = "T"
                dfs(i, j, &board)
            }
        }
    }
    
    for i in 0..<rows {
        for j in [0, cols-1] {
            if board[i][j] == "O" {
                board[i][j] = "T"
                dfs(i, j, &board)
            }
        }
    }
    
    for i in 0..<rows {
        for j in 0..<cols {
            if board[i][j] == "O" {
                board[i][j] = "X"
            } else if board[i][j] == "T" {
                board[i][j] = "O"
            }
        }
    }
}
