//
//  GreatestCommonDivisorTraversal.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/02/24.
//

// MARK: - 2709. Greatest Common Divisor Traversal

import Foundation

class GreatestCommonDivisorTraversal {
    
    func canTraverseAllPairs(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        guard !nums.contains(1) else { return false }
        
        let newNums = Array(Set(nums))
        if newNums.count == 1 { return true }
        
        var graph = Array(0 ..< newNums.count)
        for i in 0 ..< newNums.count - 1 {
            var hasJ = false
            for j in i + 1 ..< newNums.count {
                let p0 = searchParent(i, &graph)
                let p1 = searchParent(j, &graph)
                if p1 == p0 { hasJ = true; continue }
                guard gcd(newNums[i], newNums[j]) > 1 else { continue }
                hasJ = true
                if p0 < p1 {
                    graph[p1] = p0
                } else {
                    graph[p0] = p1
                }
            }
            if !hasJ { return false }
        }
        let p = searchParent(0, &graph)
        for i in 1 ..< graph.count {
            if searchParent(i, &graph) != p { return false }
        }
        return true
    }
    
    private func searchParent(_ e: Int, _ graph: inout [Int]) -> Int {
        if graph[e] == e { return e }
        graph[e] = searchParent(graph[e], &graph)
        return graph[e]
    }
    
    private func gcd(_ n: Int, _ m: Int) -> Int {
        let (a, b) = (min(n, m), max(n, m))
        if a == 1 || a == b { return a }
        return gcd(a, b - a)
    }
}
