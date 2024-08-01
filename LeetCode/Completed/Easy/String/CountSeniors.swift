//
//  CountSeniors.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/08/24.
//

import Foundation

// MARK: - 2678. Number of Senior Citizens

func countSeniors(_ details: [String]) -> Int {
    details
        .map { String($0.suffix(4)).prefix(2) }
        .compactMap { Int($0) }
        .filter { $0 > 60 }.count
}
