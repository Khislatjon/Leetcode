//
//  GroupAnagrams.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

// MARK: - 49. Group Anagrams

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var arr = [[Character: Int]]()
    var res = [[String]]()
    
    for str in strs {
        var dict = [Character: Int]()
        for ch in str {
            dict[ch, default: 0] += 1
        }
        if let i = arr.firstIndex(of: dict) {
            res[i].append(str)
        } else {
            res.append([str])
            arr.append(dict)
        }
    }
    
    return res
}
