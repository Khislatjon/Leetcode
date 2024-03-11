//
//  LeastNumberUniqueIntegers.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/02/24.
//

import Foundation

// MARK: - 1481. Least Number of Unique Integers after K Removals

// Time: O(nLogn)
// Space: O(n)
//func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
//    var dict: [Int: Int] = [:]
//    var k = k
//    
//    for num in arr {
//        dict[num, default: 0] += 1
//    }
//    
//    let sortedDictionary = dict.sorted { $0.1 < $1.1 }
//    for d in sortedDictionary {
//        if k - d.value >= 0 {
//            k -= d.value
//            dict.removeValue(forKey: d.key)
//        } else {
//            return dict.count
//        }
//    }
//    
//    return dict.count
//}


// Time: O(n) - Using bucket sort
// Space: O(n)
func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
    var dict: [Int: Int] = [:]
    var frequencyList = Array(repeating: 0, count: arr.count + 1)
    var k = k
    
    for num in arr {
        dict[num, default: 0] += 1
    }
    
    
    // Iterate through frequencies, don't care about values
    for d in dict {
        frequencyList[d.value] += 1   // indexes - Frequency, value - Number of distinct elements with this frequency
    }
    
    var count = dict.count
    for f in 1..<frequencyList.count {
        var distinct = frequencyList[f]
        if k >= f * distinct {
            k -= f * distinct
            count -= distinct
        } else {
            distinct = k / f    // Remove some distinct elements
            count -= distinct
            break
        }
    }
    
    return count
}
