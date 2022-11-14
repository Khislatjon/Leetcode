//
//  MyStack.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/09/22.
//

import Foundation

// MARK: - 225. Implement Stack using Queues

class MyStack {
    // Inefficient to use arrays as queue. Use Linked lists
    // enqueue = append, dequeue = removeFirst
    
    var queue = [Int]()
    
    init() {}
    
    func push(_ x: Int) {
        queue.append(x)
        for _ in 0..<(queue.count - 1) {
            queue.append(queue.removeFirst())
        }
    }
    
    func pop() {
        queue.removeFirst()
    }
    
    func top() -> Int {
        queue.first ?? -1
    }
    
    func empty() -> Bool {
        queue.isEmpty
    }
}
