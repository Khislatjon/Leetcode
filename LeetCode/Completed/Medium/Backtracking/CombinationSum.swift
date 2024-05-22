//
//  CombinationSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/05/24.
//

import Foundation

// MARK: - 39. Combination Sum

class CombinationSum {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        
        for i in candidates.indices {
            helper(arr: [], i: i, sum: candidates[i])
        }
        
        func helper(arr: [Int], i: Int, sum: Int) {
            if sum > target || i >= candidates.count {
                return
            }
            
            var newArr = arr
            newArr.append(candidates[i])
            
            if sum == target {
                result.append(newArr)
                return
            }
            
            for j in i..<candidates.count {
                helper(arr: newArr, i: j, sum: sum + candidates[j])
            }
        }
        
        return result
    }
}
