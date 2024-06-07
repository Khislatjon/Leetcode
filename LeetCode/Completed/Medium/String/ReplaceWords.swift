//
//  ReplaceWords.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/06/24.
//

import Foundation

// MARK: - 648. Replace Words

func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
    let keys = dictionary.sorted { $0.count < $1.count }
    var words = sentence.components(separatedBy: " ")

    for i in words.indices {
        for key in keys {
            if words[i].hasPrefix(key) {
                words[i] = key
                break
            }
        }
    }

    return words.joined(separator: " ")
}
