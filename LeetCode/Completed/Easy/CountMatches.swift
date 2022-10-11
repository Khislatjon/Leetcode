//
//  CountMatches.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/09/22.
//

import Foundation

// MARK: - 1773. Count Items Matching a Rule

func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    let ruleIndex = ruleKey == "type" ? 0 : (ruleKey == "color" ? 1 : 2)
    var result = 0
    for item in items {
        if item[ruleIndex] == ruleValue {
            result += 1
        }
    }
    return result
}
