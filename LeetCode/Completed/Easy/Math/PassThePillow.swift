//
//  PassThePillow.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/07/24.
//

import Foundation

// MARK: - 2582. Pass the Pillow

func passThePillow(_ n: Int, _ time: Int) -> Int {
    var arr: [Int] = []
    for i in 1...n {
        arr.append(i)
    }
    for i in (2..<n).reversed() {
        arr.append(i)
    }
    return arr[time % arr.count]
}

// Leetcode solution O(1):

//func passThePillow(_ n: Int, _ time: Int) -> Int {
//    let time = time % ((n-1)*2) + 1
//    return min(time, n*2-time)
//}
