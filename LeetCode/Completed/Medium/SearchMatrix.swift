//
//  SearchMatrix.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/09/22.
//

import Foundation

// MARK: - 74. Search a 2D Matrix

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var rowToSearch = [Int]()
    for row in matrix {
        if row[0] > target { break }
        rowToSearch = row
    }
    return rowToSearch.contains(target)
}
