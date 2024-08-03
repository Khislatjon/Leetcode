//
//  CanBeEqual.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/08/24.
//

import Foundation

// MARK: - 1460. Make Two Arrays Equal by Reversing Subarrays

func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    var dict1: [Int: Int] = [:]
    var dict2: [Int: Int] = [:]
    
    for i in target.indices {
        dict1[target[i], default: 0] += 1
        dict2[arr[i], default: 0] += 1
    }
    
    return dict1 == dict2
}
