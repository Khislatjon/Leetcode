//
//  RemoveAdjacentDuplicates.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/10/22.
//

import Foundation

// MARK: - 1047. Remove All Adjacent Duplicates In String

class RemoveAdjacentDuplicates {
    func removeDuplicates(_ s: String) -> String {
        var res = [String]()
        for ch in s {
            let str = String(ch)
            if res.last == str {
                res.popLast()
            } else {
                res.append(str)
            }
        }
        return res.joined()
    }
}
