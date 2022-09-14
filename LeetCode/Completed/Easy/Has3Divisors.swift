//
//  Has3Divisors.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/09/22.
//

import Foundation

// MARK: - 1952. Three Divisors

func isThree(_ n: Int) -> Bool {
    var count = 0
    for i in 1...n {
        if n % i == 0 {
            count += 1
        }
    }
    return count == 3
}
