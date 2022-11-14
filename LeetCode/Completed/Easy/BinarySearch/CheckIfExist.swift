//
//  CheckIfExist.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/10/22.
//

import Foundation

// MARK: - 1346. Check If N and Its Double Exist

func checkIfExist(_ arr: [Int]) -> Bool {
    for i in 0..<arr.count {
        for j in (i+1)..<arr.count {
            if arr[i] == 2 * arr[j] || arr[j] == 2 * arr[i] {
                return true
            }
        }
    }
    return false
}
