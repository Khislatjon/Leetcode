//
//  1072. Flip Columns For Maximum Number of Equal Rows.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/11/2024.
//

import Foundation

// MARK: - 1072. Flip Columns For Maximum Number of Equal Rows

func maxEqualRowsAfterFlips(_ matrix: [[Int]]) -> Int {
    var count: [String: Int] = [:]
    for row in matrix {
        if row[0] == 1 {
            count[row.map({ $0 == 1 ? "0" : "1" }).joined(separator: ""), default: 0] += 1
        } else {
            count[row.map({String($0)}).joined(separator: ""), default: 0] += 1
        }
    }
    return count.values.max() ?? 0
}
