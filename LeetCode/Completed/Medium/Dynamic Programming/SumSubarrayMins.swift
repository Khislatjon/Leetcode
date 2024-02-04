//
//  SumSubarrayMins.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/01/24.
//

import Foundation

// MARK: - 907. Sum of Subarray Minimums

func sumSubarrayMins(_ arr: [Int]) -> Int {
    var sum = 0
    for i in 0..<arr.count {
        var minV = arr[i]
        sum += minV
        for j in i+1..<arr.count {
            minV = min(minV, arr[j])
            sum += minV
        }
    }
    return sum % Int(truncating: NSDecimalNumber(decimal: pow(10, 9) + 7))
}
