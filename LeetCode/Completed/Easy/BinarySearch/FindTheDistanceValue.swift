//
//  FindTheDistanceValue.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/10/22.
//

import Foundation

// MARK: - 1385. Find the Distance Value Between Two Arrays

func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
    var i = 0
    var j = 0
    var result = arr1.count
    
    while i < arr1.count {
        if abs(arr1[i] - arr2[j]) <= d {
            result -= 1
            i += 1
            j = 0
        } else {
            if j == arr2.count - 1 {
                i += 1
                j = 0
            } else {
                j += 1
            }
        }
    }
    return result
}
