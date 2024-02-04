//
//  NumTrees.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 21/01/24.
//

import Foundation

// MARK: - 96. Unique Binary Search Trees

func numTrees(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    
    var sum = 0
    for num in 1...n {
        sum += numTrees(num-1)*numTrees(n-num)
    }
    return sum
}
