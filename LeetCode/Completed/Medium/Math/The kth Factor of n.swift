//
//  The kth Factor of n.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/11/2024.
//

import Foundation

// MARK: - 1492. The kth Factor of n

func kthFactor(_ n: Int, _ k: Int) -> Int {
    let sqrt = Int(sqrt(Double(n)))
    var factors: [Int] = []
    for i in 1...sqrt {
        if n.isMultiple(of: i) {
            factors.append(i)
        }
    }
    
    var j = factors.count - 1
    while j >= 0 {
        let res = n / factors[j]
        if res != factors[j] {
            factors.append(res)
        }
        j -= 1
    }
    return factors.count >= k ? factors[k-1] : -1
}
