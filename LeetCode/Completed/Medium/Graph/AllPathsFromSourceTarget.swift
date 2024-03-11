//
//  AllPathsFromSourceTarget.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/02/24.
//

import Foundation

// MARK: - 797. All Paths From Source to Target

func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
    var res: [[Int]] = []
    var arr: [Int] = []
    
    func backtrack(i: Int, arr: inout [Int]) {
        arr.append(i)
        
        if i == graph.count - 1 {
            res.append(arr)
        }
        
        let neighbours = graph[i]
        
        for neighbour in neighbours {
            backtrack(i: neighbour, arr: &arr)
        }
        
        arr.removeLast()    // removes last nodes based on number of recursion stacks in memory
    }
    
    backtrack(i: 0, arr: &arr)
    
    return res
}
