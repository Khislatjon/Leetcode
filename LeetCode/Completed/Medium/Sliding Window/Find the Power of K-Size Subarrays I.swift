//
//  Find the Power of K-Size Subarrays I.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/11/2024.
//

import Foundation

// MARK: - 3254. Find the Power of K-Size Subarrays I

class FindPowerKSizeSubarrays {
    // First Solution O(nk)
    func resultsArray(_ nums: [Int], _ k: Int) -> [Int] {
            var i = 0
            var j = k - 1
            var result: [Int] = []
            while j < nums.count {
                if isSorted(nums[i...j]) {
                    result.append(nums[j])
                } else {
                    result.append(-1)
                }
                i += 1
                j += 1
            }
            return result
        }
    
    func isSorted(_ arrSlice: ArraySlice<Int>) -> Bool {
        let arr = Array(arrSlice)
        for i in 0..<arr.count-1 {
            if arr[i+1] != arr[i] + 1 {
                return false
            }
        }
        return true
    }
    
    // Second Solution O(n)
    func resultsArray2(_ nums: [Int], _ k: Int) -> [Int] {
        var l = 0
        var consecutiveCount = 1
        var result: [Int] = []
        
        for r in nums.indices {
            if r > 0 && nums[r-1] + 1 == nums[r] {
                consecutiveCount += 1
            }
            
            if r - l + 1 > k {
                if nums[l] + 1 == nums[l+1] {
                    consecutiveCount -= 1
                }
                l += 1
            }
            
            if r - l + 1 == k {
                result.append(consecutiveCount == k ? nums[r] : -1)
            }
        }

        return result
    }
}
