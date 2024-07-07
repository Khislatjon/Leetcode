//
//   MinimumDifferenceBetweenLargestSmallest3.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/07/24.
//

import Foundation

// MARK: - 1509. Minimum Difference Between Largest and Smallest Value in Three Moves
// Need to check 4 cases! Great solution! Not by me:)

func minDifference(_ nums: [Int]) -> Int {
    guard nums.count > 4 else { return 0 }
    let nums = nums.sorted()
    return zip(nums.suffix(4), nums).map(-).min()!
}
