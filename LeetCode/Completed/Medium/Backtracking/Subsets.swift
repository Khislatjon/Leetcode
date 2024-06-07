//
//  Subsets.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/05/24.
//

import Foundation

// MARK: - 78. Subsets

class Subsets {
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var subset: [Int] = []
        
        func dfs(_ i: Int) {
            guard i < nums.count else {
                result.append(subset)
                return
            }
            
            subset.append(nums[i])
            dfs(i+1)
            
            subset.removeLast()
            dfs(i+1)
        }
        
        dfs(0)
        
        return result
    }
}
