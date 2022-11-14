//
//  KWeakestRows.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/10/22.
//

import Foundation

// MARK: - 1337. The K Weakest Rows in a Matrix

func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var sumRows = [(Int, Int)]()
    
    for (i, row) in mat.enumerated() {
        var left = 0
        var right = row.count
        while left < right {
            let mid = (left + right) / 2
            if row[mid] == 1 {
                left = mid + 1
            } else {
                right = mid
            }
        }
        sumRows.append((left, i))
    }
    sumRows = sumRows.sorted(by: { l, r in
        l.0 < r.0
    })
    
    var res = [Int]()
    for i in 0..<k {
        res.append(sumRows[i].1)
    }
    return res
}
