//
//  MinTimeToType.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/09/22.
//

import Foundation

// MARK: - 1974. Minimum Time to Type Word Using Special Typewriter

func minTimeToType(_ word: String) -> Int {
    var prev = Character("a")
    var time = 0
    
    for ch in word {
        let f = abs(Int(prev.asciiValue!) - Int(ch.asciiValue!))
        let s = abs(Int(prev.asciiValue!) - Int(ch.asciiValue!) + 26)
        let t = abs(Int(prev.asciiValue!) - Int(ch.asciiValue!) - 26)
        time += [f,s,t].min()!
        prev = ch
    }
    time += word.count
    return time
}
