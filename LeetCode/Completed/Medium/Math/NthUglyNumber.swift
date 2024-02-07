//
//  NthUglyNumber.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/02/24.
//

import Foundation

// MARK: - 264. Ugly Number II

func nthUglyNumber(_ n: Int) -> Int {
    var arr: [Int] = [1]
    var two = 0, three = 0, five = 0
    
    while arr.count < n {
        while arr[two]*2 <= arr[arr.count-1] { two += 1 }
        while arr[three]*3 <= arr[arr.count-1] { three += 1 }
        while arr[five]*5 <= arr[arr.count-1] { five += 1 }
        arr.append(min(arr[two]*2, arr[three]*3, arr[five]*5))
    }
    return arr[arr.count-1]
}
