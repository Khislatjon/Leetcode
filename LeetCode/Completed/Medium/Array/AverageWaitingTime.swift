//
//  AverageWaitingTime.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/07/24.
//

import Foundation

// MARK: - 1701. Average Waiting Time

func averageWaitingTime(_ customers: [[Int]]) -> Double {
    var finishedTime = 0
    var sum = 0
    for customer in customers {
        let arrival = customer[0]
        let time = customer[1]
        finishedTime = max(finishedTime - arrival, 0) + arrival + time
        sum += (finishedTime - arrival)
    }
    return Double(sum) / Double(customers.count)
}
