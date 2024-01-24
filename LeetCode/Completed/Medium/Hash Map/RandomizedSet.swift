//
//  RandomizedSet.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 16/01/24.
//

import Foundation

// MARK: - 380. Insert Delete GetRandom O(1)

class RandomizedSet {
    
    var dict: [Int: Int] = [:]
    
    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        if dict[val] == nil {
            dict[val] = 1
            return true
        }
        return false
    }
    
    func remove(_ val: Int) -> Bool {
        if dict[val] == nil {
            return false
        } else {
            dict[val] = nil
            return true
        }
    }
    
    func getRandom() -> Int {
        dict.keys.randomElement() ?? 0
    }
}
