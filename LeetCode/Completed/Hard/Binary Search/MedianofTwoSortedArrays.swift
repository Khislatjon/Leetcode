//
//  MedianofTwoSortedArrays.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/12/2024.
//

import Foundation

// MARK: - 4. Median of Two Sorted Arrays
// Time: O(n+m) Can be solved with Binary search more efficiently.

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var i = 0
    var j = 0
    let n1 = nums1.count
    let n2 = nums2.count
    var resultArr: [Int] = []
    
    guard n1+n2 > 0 else { return 0.0 }
    
    while i < n1 && j < n2 {
        if nums1[i] < nums2[j] {
            resultArr.append(nums1[i])
            i += 1
        } else if nums1[i] > nums2[j] {
            resultArr.append(nums2[j])
            j += 1
        } else {
            resultArr.append(nums1[i])
            resultArr.append(nums2[j])
            i += 1
            j += 1
        }
    }
    
    while i < n1 {
        resultArr.append(nums1[i])
        i += 1
    }
    while j < n2 {
        resultArr.append(nums2[j])
        j += 1
    }
    
    if (n1+n2) % 2 == 0  {
        let one = resultArr[(n1+n2) / 2 - 1]
        let two = resultArr[(n1+n2) / 2]
        return Double(one+two)/2.0
    } else {
        return Double(resultArr[(n1+n2) / 2])
    }
}
