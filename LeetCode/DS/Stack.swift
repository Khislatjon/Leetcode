//
//  Stack.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/09/22.
//

import Foundation

public struct StackArray<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var peek: T? {
        return array.last
    }
}

public class StackList<T> {
    private class StackNode<T> {
        var data: T?
        var next: StackNode<T>?
        
        init(_ data: T?) {
            self.data = data
        }
    }
    
    private var top: StackNode<T>?
    
    func pop() -> T? {
        guard top != nil else { return nil }
        let item = top?.data
        top = top?.next
        return item
    }
    
    func push(_ item: T) {
        let t = StackNode<T>(item)
        t.next = top
        top = t
    }
    
    var peek: T? {
        return top?.data
    }
    
    var isEmpty: Bool {
        return top == nil
    }
}
