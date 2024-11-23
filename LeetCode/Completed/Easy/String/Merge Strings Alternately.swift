//
//  Merge Strings Alternately.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/11/2024.
//

import Foundation

// MARK: - 1768. Merge Strings Alternately

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    let arr1 = Array(word1)
    let arr2 = Array(word2)
    var maxN = max(arr1.count, arr2.count)
    var res = ""
    for i in 0..<maxN {
        if i < arr1.count { res.append(arr1[i]) }
        if i < arr2.count { res.append(arr2[i]) }
    }
    return res
}
