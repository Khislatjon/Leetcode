//
//  ApplyOperationstoMakeStringEmpty.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/02/24.
//

import Foundation

// MARK: - 3039. Apply Operations to Make String Empty

func lastNonEmptyString(_ s: String) -> String {
    let arr = Array(s)
    var freq: [Character: Int] = [:]
    var lastPosition: [Character: Int] = [:]
    
    for i in 0..<arr.count {
        freq[arr[i], default: 0] += 1
        lastPosition[arr[i]] = i
    }
    
    let maxF = freq.values.max()
    var mostUsed = ""
    
    for d in freq {
        if d.value == maxF {
            mostUsed.append(d.key)
        }
    }
    
    let lastPositionSorted = lastPosition.sorted { $0.1 < $1.1 }
    var result = ""
    
    for d in lastPositionSorted {
        if mostUsed.contains(d.key) {
            result.append(d.key)
        }
    }
    
    return result
}

// Time limit exceeded
//func lastNonEmptyString(_ s: String) -> String {
//    var arr = Array(s)
//    var prev = s
//    var removed = Set<Character>()
//    
//    while !arr.isEmpty {
//        prev = String(arr)
//        var temp: [Character] = []
//        for i in 0..<arr.count {
//            if !removed.contains(arr[i]) {
//                removed.insert(arr[i])
//            } else {
//                temp.append(arr[i])
//            }
//        }
//        arr = temp
//        removed = []
//    }
//    
//    return prev
//}
