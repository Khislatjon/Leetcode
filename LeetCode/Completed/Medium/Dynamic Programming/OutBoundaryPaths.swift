//
//  OutBoundaryPaths.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/01/24.
//

import Foundation

// MARK: - 576. Out of Boundary Paths

func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
    let ROWS = m, COLS = n
    var grid = Array(repeating: Array(repeating: 0, count: COLS), count: ROWS)
    let modulo = Int(truncating: NSDecimalNumber(decimal: pow(10, 9) + 7))
    
    for _ in 0..<maxMove {
        var temp = Array(repeating: Array(repeating: 0, count: COLS), count: ROWS)
        for r in 0..<ROWS {
            for c in 0..<COLS {
                if r + 1 == ROWS {
                    temp[r][c] += 1
                } else {
                    temp[r][c] = (temp[r][c] + grid[r+1][c]) % modulo
                }
                
                if r - 1 < 0 {
                    temp[r][c] += 1
                } else {
                    temp[r][c] = (temp[r][c] + grid[r-1][c]) % modulo
                }
                
                if c + 1 == COLS {
                    temp[r][c] += 1
                } else {
                    temp[r][c] = (temp[r][c] + grid[r][c+1]) % modulo
                }
                
                if c - 1 < 0 {
                    temp[r][c] += 1
                } else {
                    temp[r][c] = (temp[r][c] + grid[r][c-1]) % modulo
                }
            }
        }
        grid = temp
        
        for row in temp {
            print(row)
        }
        print("\n")
    }
    return grid[startRow][startColumn] % modulo
}
