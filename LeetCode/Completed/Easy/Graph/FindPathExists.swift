//
//  FindPathExists.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/02/24.
//

import Foundation

// MARK: - 1971. Find if Path Exists in Graph

class FindPathExists {
    func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        guard !edges.isEmpty else { return true }
        
        var dict: [Int: [Int]] = [:]    // store neighbours
        var visited = Set<Int>()
        
        for edge in edges {
            dict[edge[0], default: []].append(edge[1])
            dict[edge[1], default: []].append(edge[0])
        }
        
        func dfs(_ node: Int) {
            visited.insert(node)
            guard let neighbours = dict[node], !neighbours.isEmpty else { return }
            
            for neighbour in neighbours {
                if !visited.contains(neighbour) {
                    dfs(neighbour)
                }
            }
        }
        
        dfs(source)
        
        return visited.contains(destination)
    }
}
