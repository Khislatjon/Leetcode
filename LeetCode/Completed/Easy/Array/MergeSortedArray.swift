//
//  MergeSortedArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

// MARK: - 88. Merge Sorted Array

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = 0
    var j = 0
    var res: [Int] = []
    
    while i < m && j < n {
        if nums1[i] < nums2[j] {
            res.append(nums1[i])
            i += 1
        } else if nums2[j] < nums1[i] {
            res.append(nums2[j])
            j += 1
        } else {
            res.append(nums1[i])
            res.append(nums2[j])
            i += 1
            j += 1
        }
    }
    
    if i == m {
        for k in j..<n {
            res.append(nums2[k])
        }
    } else if j == n {
        for k in i..<m {
            res.append(nums1[k])
        }
    }
    
    nums1 = res
}
