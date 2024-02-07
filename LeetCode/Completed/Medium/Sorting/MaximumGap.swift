//
//  MaximumGap.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

// MARK: - 164. Maximum Gap

func maximumGap(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return 0 }
    let arr = nums.sorted()
    
    var maxV = 0
    for i in 0..<arr.count-1 {
        maxV = max(maxV, arr[i+1] - arr[i])
    }
    return maxV
}
