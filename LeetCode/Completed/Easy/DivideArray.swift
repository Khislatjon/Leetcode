//
//  DivideArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/09/22.
//

import Foundation

// MARK: - 2206. Divide Array Into Equal Pairs

func divideArray(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    
    for num in nums {
        if dict[num] == nil {
            dict[num] = num
        } else {
            dict[num] = nil
        }
    }
    return dict.isEmpty
}
