//
//  SummaryRanges.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 21/09/22.
//

import Foundation

// MARK: - 228. Summary Ranges

func summaryRanges(_ nums: [Int]) -> [String] {
    guard !nums.isEmpty else { return [] }
    var ans = [String]()
    var first = nums[0]
    var lastV = first
    for i in 1..<nums.count {
        let cv = nums[i]
        if cv - lastV > 1 {
            let str = (lastV == first) ? "\(first)" : "\(first)->\(lastV)"
            ans.append(str)
            first = cv
        }
        lastV = cv
    }
    let str = (lastV == first) ? "\(first)" : "\(first)->\(lastV)"
    ans.append(str)
    return ans
}
