//
//  JudgeCircle.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/09/22.
//

import Foundation

// MARK: - 657. Robot Return to Origin

func judgeCircle(_ moves: String) -> Bool {
    var x = 0
    var y = 0
    
    for move in moves {
        switch move {
        case "R":
            x += 1
        case "L":
            x -= 1
        case "U":
            y += 1
        case "D":
            y -= 1
        default:
            break
        }
    }
    return x == 0 && y == 0
}

