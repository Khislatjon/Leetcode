//
//  PivotArray.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/09/22.
//

import Foundation

// MARK: - 2161. Partition Array According to Given Pivot

func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
    var less = [Int]()
    var equal = [Int]()
    var greater = [Int]()
    
    for n in nums {
        if n < pivot {
            less.append(n)
        } else if n == pivot {
            equal.append(n)
        } else {
            greater.append(n)
        }
    }
    return less + equal + greater
}
