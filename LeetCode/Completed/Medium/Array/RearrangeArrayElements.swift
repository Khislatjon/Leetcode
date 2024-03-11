//
//  RearrangeArrayElements.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/02/24.
//

import Foundation

// MARK: - 2149. Rearrange Array Elements by Sign

func rearrangeArray(_ nums: [Int]) -> [Int] {
    var res: [Int] = Array(repeating: 0, count: nums.count)
    var i = 0
    var j = 1
    
    for num in nums {
        if num > 0 {
            res[i] = num
            i += 2
        } else {
            res[j] = num
            j += 2
        }
    }
    return res
}
//[-3, 4, 5,-9]
