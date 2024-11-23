//
//  1861. Rotating the Box.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

// MARK: - 1861. Rotating the Box

func rotateTheBox(_ box: [[Character]]) -> [[Character]] {
    var grid = box
    for i in grid.indices {
        for _ in 0...i {
            var r = grid[i].count-1
            var l = r
            
            while l >= 0 {
                if grid[i][l] == "*" {
                    r = -1
                } else if grid[i][l] == "#" {
                    if r != -1 {
                        grid[i][l] = "."
                        grid[i][r] = "#"
                        r -= 1
                    }
                } else {
                    if r == -1 { r = l }
                }
                l -= 1
            }
        }
    }
    
    var rotated: [[Character]] = []
    var i = grid.count - 1
    var j = 0
    while j < grid[0].count {
        var newRow: [Character] = []
        while i >= 0 {
            newRow.append(grid[i][j])
            i -= 1
        }
        rotated.append(newRow)
        
        i = grid.count - 1
        j += 1
    }
    return rotated
}
