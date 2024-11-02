//
//  Circular Sentence.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/11/2024.
//

import Foundation

// MARK: - 2490. Circular Sentence

func isCircularSentence(_ sentence: String) -> Bool {
    let words = sentence.components(separatedBy: " ")
    if words.first?.first != words.last?.last {
        return false
    }
    guard words.count > 1 else { return true }
    
    for i in 1..<words.count {
        if words[i].first != words[i-1].last {
            return false
        }
    }
    
    return true
}
