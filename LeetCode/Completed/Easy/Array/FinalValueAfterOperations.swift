//
//  FinalValueAfterOperations.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/11/22.
//

import Foundation

// MARK: - 2011. Final Value of Variable After Performing Operations

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var result = 0
    for operation in operations {
        result += operation.contains("++") ? 1 : -1
    }
    return result
}
