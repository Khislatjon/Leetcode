//
//  LemonadeChange.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/08/24.
//

import Foundation

// MARK: - 860. Lemonade Change

func lemonadeChange(_ bills: [Int]) -> Bool {
    var five = 0
    var ten = 0
    
    for bill in bills {
        if bill == 5 {
            five += 1
        } else if bill == 10 {
            ten += 1
            five -= 1
        } else if bill == 20 && ten > 0 {
            ten -= 1
            five -= 1
        } else {
            five -= 3
        }
        
        if five < 0 {
            return false
        }
    }
    
    return true
}
