//
//  SequentialDigits.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/02/24.
//

import Foundation

// MARK: - 1291. Sequential Digits

class SequentialDigits {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        var res: [Int] = []
        
        while !arr.isEmpty {
            for i in 0..<arr.count {
                if low...high ~= arr[i] {
                    res.append(arr[i])
                } else if arr[i] > high {
                    return res
                }
                
                let last = arr[i] % 10
                if last == 9 {
                    arr.removeLast()
                } else {
                    arr[i] *= 10
                    arr[i] += (last + 1)
                }
            }
        }
        return res
    }
}
