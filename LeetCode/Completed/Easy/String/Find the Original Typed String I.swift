//
//  Find the Original Typed String I.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

// MARK: - 3330. Find the Original Typed String I
func possibleStringCount(_ word: String) -> Int {
    var count = 1
    var lastCh: Character?
    for ch in word {
        if lastCh == ch {
            count += 1
        }
        lastCh = ch
    }
    return count
}
