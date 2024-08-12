//
//  RangeSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/08/24.
//

import Foundation

// MARK: - 1508. Range Sum of Sorted Subarray Sums

func rangeSum(_ nums: [Int], _ n: Int, _ left: Int, _ right: Int) -> Int {
    var sumArray: [Int] = []
    var sum: Int = 0
    
    for i in 0..<nums.count {
        var curSum = 0
        for j in i..<nums.count {
            curSum += nums[j]
            sumArray.append(curSum)
        }
    }
    
    let sorted = sumArray.sorted()
    for i in left...right {
        sum += sorted[i-1]
    }
    
    return sum % Int(truncating: NSDecimalNumber(decimal: pow(10, 9) + 7))
}
