//
//  SortCharactersByFrequency.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/02/24.
//

import Foundation

// MARK: - 451. Sort Characters By Frequency

func frequencySort(_ s: String) -> String {
    var res = ""
    var dict = [Character: Int]()
    for ch in s {
        dict[ch, default: 0] += 1
    }
    
    let sortedDictionary = dict.sorted { $0.1 > $1.1 }
    
    for dictionary in sortedDictionary {
        for _ in 0..<dictionary.value {
            res += String(dictionary.key)
        }
    }
    return res
}
