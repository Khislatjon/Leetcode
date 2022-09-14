//
//  FindFinalValue.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/09/22.
//

import Foundation

// MARK: - 2154. Keep Multiplying Found Values by Two

func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
    var result = original
    var i = 0
    
    while i < nums.count {
        if result == nums[i] {
            result *= 2
            i = 0
        } else {
            i += 1
        }
    }
    return result
}
