//
//  DailyTemperatures.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/10/22.
//

import Foundation

// MARK: - 739. Daily Temperatures

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: temperatures.count)
    var stack = [Int]()
    
    for i in 0..<temperatures.count {
        while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
            let t = stack.removeLast()
            result[t] = i - t
        }
        stack.append(i)
    }
    return result
}
