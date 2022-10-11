//
//  FirstBadVersion.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/10/22.
//

import Foundation

// MARK: - 278. First Bad Version

func firstBadVersion(_ n: Int) -> Int {
    var left = 1
    var right = n
    
    while left < right {
        let mid = left + (right - left) / 2
        if isBadVersion(mid) {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}

func isBadVersion(_ version: Int) -> Bool {
    return version > 3
}
