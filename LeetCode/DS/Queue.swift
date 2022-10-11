//
//  Queue.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 19/09/22.
//

import Foundation

// Inefficient to use arrays. All elements needs to be shifted

public class Queue<T> {
    private class QueueNode<T> {
        var data: T?
        var next: QueueNode<T>?
        
        init(_ data: T?) {
            self.data = data
        }
    }
    
    private var first: QueueNode<T>?
    private var last: QueueNode<T>?
    
    func pop() -> T? {
        guard first != nil else { return nil }
        let item = first?.data
        first = first?.next
        if first == nil {
            last = nil
        }
        return item
    }
    
    func add(_ data: T?) {
        let t = QueueNode<T>(data)
        if last != nil {
            t.next = last
        }
        last = t
        if first == nil {
            first = last
        }
    }
    
    var peek: T? {
        return first?.data
    }
    
    var isEmpty: Bool {
        return first == nil
    }
}
