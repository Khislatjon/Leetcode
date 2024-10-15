//
//  PermutationString.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/10/2024.
//

import Foundation

// MARK: - 567. Permutation in String

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    typealias DCI = [Character:Int]
    let as2 = Array(s2)
    var lhs = 0, rhs = 0, match = 0, need = DCI(), win = DCI()
    for ch in s1 { need[ch, default: 0] += 1 }
    
    while rhs < as2.count {
        let a2r = as2[rhs]
        rhs += 1
        if let n2r = need[a2r] {
            win[a2r, default: 0] += 1
            if win[a2r] == n2r { match += 1 }
        }
        while match == need.count {
            if rhs - lhs == s1.count { return true }
            let a2l = as2[lhs]
            lhs += 1
            if let n2l = need[a2l] {
                if win[a2l] == n2l { match -= 1 }
                win[a2l, default: 0] -= 1
            }
        }
    }
    return false
}
