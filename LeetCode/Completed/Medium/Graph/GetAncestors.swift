//
//  GetAncestors.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/06/24.
//

import Foundation

// MARK: - 2192. All Ancestors of a Node in a Directed Acyclic Graph

class GetAncestors {
    func getAncestors(_ n: Int, _ edges: [[Int]]) -> [[Int]] {
        var directChild = Array(repeating: [Int](), count: n)
        var result = Array(repeating: [Int](), count: n)
        
        for edge in edges {
            directChild[edge[0]].append(edge[1])
        }
        
        for i in directChild.indices {
            dfs(i, i)
        }
        
        func dfs(_ x: Int, _ cur: Int) {
            for ch in directChild[cur] {
                if result[ch].isEmpty || result[ch][result[ch].count-1] != x {
                    result[ch].append(x)
                    dfs(x, ch)
                }
            }
        }
        
        return result
    }
}
