//
//  Maximum Number of Operations With the Same Score II.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/02/24.
//

import Foundation

// MARK: - 3040. Maximum Number of Operations With the Same Score II

class MaximumNumberofOperationsWiththeSameScore {
    func maxOperations(_ nums: [Int]) -> Int {
        let n = nums.count
        var arr1 = Array(repeating: Array(repeating: -1, count: n), count: n)
        var arr2 = Array(repeating: Array(repeating: -1, count: n), count: n)
        var arr3 = Array(repeating: Array(repeating: -1, count: n), count: n)
        
        func helper(_ left: Int, _ right: Int, _ sum: Int, _ arr: inout [[Int]]) -> Int {
            guard left < right else { return 0 }
            
            if arr[left][right] != -1 {
                return arr[left][right]
            }
            
            var best = 0
            if nums[left] + nums[left+1] == sum {
                best = max(best, 1 + helper(left + 2, right, sum, &arr))
            }
            if nums[right] + nums[right-1] == sum {
                best = max(best, 1 + helper(left, right-2, sum, &arr))
            }
            if nums[left] + nums[right] == sum {
                best = max(best, 1 + helper(left + 1, right - 1, sum, &arr))
            }
            arr[left][right] = best
            
            return best
        }
        
        return max(helper(0, n-1, nums[0] + nums[1], &arr1),
                   helper(0, n-1, nums[n-1] + nums[n-2], &arr2),
                   helper(0, n-1, nums[0] + nums[n-1], &arr3))
    }
}
