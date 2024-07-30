//
//  SortJumbled.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/07/24.
//

import Foundation

// MARK: - 2191. Sort the Jumbled Numbers

func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
    var tuple: [(el: Int, value: Int)] = []
    var result: [Int] = []
    
    for el in nums {
        var element = el
        var multipler = 1
        var sum = 0
        while element > 9 {
            sum += mapping[element % 10] * multipler
            element /= 10
            multipler *= 10
        }
        sum += mapping[element % 10] * multipler
        tuple.append((el, sum))
    }

    let sorted = tuple.sorted(by: { $0.value < $1.value })
    for ob in sorted {
        result.append(ob.el)
    }
    return result
}
