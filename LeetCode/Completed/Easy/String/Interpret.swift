//
//  Interpret.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/12/22.
//

import Foundation

// MARK: - 1678. Goal Parser Interpretation

func interpret(_ command: String) -> String {
    var result = ""
    var temp = ""
    
    for ch in command {
        temp.append(ch)
        switch temp {
        case "G":
            result.append("G")
            temp = ""
        case "()":
            result.append("o")
            temp = ""
        case "(al)":
            result.append("al")
            temp = ""
        default:
            continue
        }
    }
    return result
}
