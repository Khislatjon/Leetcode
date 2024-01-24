//
//  FindSubstring.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/01/24.
//

import Foundation

// MARK: - 30. Substring with Concatenation of All Words

func findSubstring(_ s: String, _ words: [String]) -> [Int] {
    guard !(s.isEmpty) || !(words.isEmpty) else { return [] }
    
    let lenS = s.count, chars = Array(s)
    let size = words[0].count, count = words.count * size
    
    guard lenS >= count else { return [] }
    
    var wordDict = [[Character]:Int]()
    
    for word in words {
        let arr: [Character] = word.map({$0})
        wordDict[arr, default: 0] = (wordDict[arr] ?? 0) + 1
    }
    var result = [Int]()
    
    for i in 0..<size {
        var val = i
        while val <= (lenS - count) {
            var diff = (val + count)
            var dict = [[Character]:Int]()
            var equal: Bool = true
            while val < diff {
                let temp: [Character] = chars[(diff - size)..<diff].map({$0})
                dict[temp] = (dict[temp] ?? 0) + 1
                if let char = dict[temp], char > (wordDict[temp] ?? 0) {
                    equal = false
                    break
                }
                diff -= size
            }
            if dict == wordDict { result.append(val) }
            if equal { val += size } else { val = diff }
        }
    }
    return result
}



