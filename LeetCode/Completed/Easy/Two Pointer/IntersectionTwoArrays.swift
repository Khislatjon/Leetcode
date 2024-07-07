//
//  IntersectionTwoArrays.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/07/24.
//

import Foundation

// MARK: - 350. Intersection of Two Arrays II

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var arr1 = nums1.sorted()
    var arr2 = nums2.sorted()
    var i = 0, j = 0
    var result: [Int] = []
    
    while i < arr1.count && j < arr2.count {
        if arr1[i] == arr2[j] {
            result.append(arr1[i])
            i += 1
            j += 1
        } else if arr1[i] < arr2[j] {
            i += 1
        } else {
            j += 1
        }
    }
    
    return result
}

// if nums1's size is much bigger than nums2's, Binary search is more efficient than two pointer.
