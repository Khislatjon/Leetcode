//
//  MinSetSize.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/11/22.
//

import Foundation

// MARK: - 1338. Reduce Array Size to The Half

func minSetSize(_ arr: [Int]) -> Int {
    var dict = [Int: Int]()
    for val in arr {
        dict[val, default: 0] += 1
    }
    let sortedDict = dict.sorted { $0.value > $1.value}
    var count = 0
    var sum = 0
    for ( _ , v) in sortedDict {
        if arr.count / 2 > sum {
            count += 1
        } else {
            return count
        }
        sum += v
    }
    return count
}
