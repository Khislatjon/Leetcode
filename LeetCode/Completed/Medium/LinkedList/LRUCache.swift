//
//  LRUCache.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/02/24.
//

import Foundation

// MARK: - 146. LRU Cache

class DoubleLinkedNode {
    let key: Int
    let val: Int
    var prev: DoubleLinkedNode?
    var next: DoubleLinkedNode?
    
    init(key: Int, val: Int) {
        self.key = key
        self.val = val
    }
}

// 0 ... 0
// l ... r -> left and right always point to beginning and end of a list. Nodes between change

class LRUCache {
    let capacity: Int
    var cache: [Int: DoubleLinkedNode] = [:]
    var left: DoubleLinkedNode?     // most least used
    var right: DoubleLinkedNode?    // most recently used
    
    init(_ capacity: Int) {
        self.capacity = capacity
        
        left = DoubleLinkedNode(key: 0, val: 0)
        right = DoubleLinkedNode(key: 0, val: 0)
        left?.next = right
        right?.prev = left
    }
    
    func get(_ key: Int) -> Int {
        if let v = cache[key]?.val {
            remove(self.cache[key])
            insert(self.cache[key])
            return v
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let _ = cache[key]?.val {
            remove(self.cache[key])
        }
        self.cache[key] = DoubleLinkedNode(key: key, val: value)
        self.insert(self.cache[key])
        
        if self.cache.count > self.capacity {
            guard let nextLeft = self.left?.next else { return }
            self.remove(nextLeft)
            self.cache.removeValue(forKey: nextLeft.key)
        }
    }
    
    private func remove(_ node: DoubleLinkedNode?) {
        let prev = node?.prev
        let next = node?.next
        prev?.next = next
        next?.prev = prev
    }
    
    private func insert(_ node: DoubleLinkedNode?) {
        let prev = self.right?.prev
        let next = self.right
        prev?.next = node
        node?.prev = prev
        node?.next = next
        next?.prev = node
    }
}
