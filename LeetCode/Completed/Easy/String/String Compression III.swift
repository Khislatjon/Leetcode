//
//  String Compression III.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/11/2024.
//

import Foundation

// MARK: - 3163. String Compression III

func compressedString(_ word: String) -> String {
    var lastChar: Character = word.first!
    var count = 0
    var result = ""
    for ch in word {
        if ch == lastChar {
            count += 1
            if count == 9 {
                result.append("\(count)\(lastChar)")
                count = 0
            }
        } else {
            if count > 0 { result.append("\(count)\(lastChar)") }
            lastChar = ch
            count = 1
        }
    }
    
    if count > 0 { result.append("\(count)\(lastChar)") }
    return result
}
