//
//  CommonChars.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/06/24.
//

import Foundation

// MARK: - 1002. Find Common Characters

func commonChars(_ words: [String]) -> [String] {
    var resultDict: [Character: Int] = [:]
    var result: [String] = []
    
    for word in words {
        var dict: [Character: Int] = [:]
        for ch in word {
            dict[ch, default: 0] += 1
        }
        
        if resultDict.isEmpty {
            resultDict = dict
        } else {
            for (k, v) in resultDict {
                resultDict[k] = min(dict[k, default: 0], v)
            }
        }
    }
    
    for (k, v) in resultDict {
        result.append(contentsOf: Array(repeating: String(k), count: v))
    }
    
    return result
}
