//
//  Subarray Sum Equals K.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/11/2024.
//

import Foundation

// MARK: - 560. Subarray Sum Equals K

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var prefixSumCount: [Int: Int] = [0: 1]
    var sum = 0
    var result = 0
    for num in nums {
        sum += num
        result += prefixSumCount[sum-k, default: 0]
        prefixSumCount[sum, default: 0] += 1
    }
    return result
}
