//
//  MaxDistance.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/10/22.
//

import Foundation

// MARK: - 1855. Maximum Distance Between a Pair of Values

func maxDistance(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var i = 0
    var j = 0
    var result = 0
    
    while i < nums1.count && j < nums2.count {
        if nums1[i] > nums2[j] {
            i += 1
        } else {
            result = max(result, j - i)
            j += 1
        }
    }
    return result
}
