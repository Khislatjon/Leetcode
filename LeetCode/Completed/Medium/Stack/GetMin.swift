//
//  GetMin.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/09/22.
//

import Foundation

// MARK: - 155. Min Stack

struct StackNode {
    let val: Int
    let min: Int
}

class MinStack {
    
    var array: [StackNode]
    
    init() {
        array = []
    }
    
    func push(_ val: Int) {
        let min = getMin()
        let withMin = StackNode(val: val, min: min)
        let withVal = StackNode(val: val, min: val)
        let node = min < val && !array.isEmpty ? withMin : withVal
        array.append(node)
    }
    
    func pop() {
        array.removeLast()
    }
    
    func top() -> Int {
        array.last?.val ?? 0
    }
    
    func getMin() -> Int {
        array.last?.min ?? 0
    }
}
