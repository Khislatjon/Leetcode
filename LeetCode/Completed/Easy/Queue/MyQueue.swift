//
//  MyQueue.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/09/22.
//

import Foundation

// MARK: - 232. Implement Queue using Stacks

class MyQueue {
    var newStack = [Int]()
    var oldStack = [Int]()
    init() {
        
    }
    
    func push(_ x: Int) {
        newStack.append(x)
    }
    
    func pop() -> Int {
        transferToOld()
        return oldStack.popLast() ?? -1
    }
    
    func peek() -> Int {
        transferToOld()
        return oldStack.last ?? -1
    }
    
    func empty() -> Bool {
        transferToOld()
        return oldStack.isEmpty
    }
    
    private func transferToOld() {
        // store newStack in reverse order
        if oldStack.isEmpty {
            while !newStack.isEmpty {
                oldStack.append(newStack.removeLast())
            }
        }
    }
}
