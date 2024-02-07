//
//  MinHeap.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/02/24.
//

import Foundation

struct MinHeap {
    var items: [Int] = []
    
    // Get Index
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    // Boolean Check
    private func hasLeftChild(_ index: Int) -> Bool {
        return getLeftChildIndex(index) < items.count
    }
    private func hasRightChild(_ index: Int) -> Bool {
        return getRightChildIndex(index) < items.count
    }
    private func hasParent(_ index: Int) -> Bool {
        return getParentIndex(index) >= 0
    }
    
    // Return Item From Heap
    private func leftChild(_ index: Int) -> Int {
        return items[getLeftChildIndex(index)]
    }
    private func rightChild(_ index: Int) -> Int {
        return items[getRightChildIndex(index)]
    }
    private func parent(_ index: Int) -> Int {
        return items[getParentIndex(index)]
    }
    
    
    mutating private func swap(indexOne: Int, indexTwo: Int) {
        (items[indexOne], items[indexTwo]) = (items[indexTwo], items[indexOne]) // one line swap
//        let placeholder = items[indexOne]
//        items[indexOne] = items[indexTwo]
//        items[indexTwo] = placeholder
    }
    
    mutating private func heapifyUp() {
        var index = items.count - 1
        while hasParent(index) && parent(index) > items[index] {
            swap(indexOne: getParentIndex(index), indexTwo: index)
            index = getParentIndex(index)
        }
    }
    
    
    mutating private func heapifyDown() {
        var index = 0
        while hasLeftChild(index) {
            var smallerChildIndex = getLeftChildIndex(index)
            if hasRightChild(index) && rightChild(index) < leftChild(index) {
                smallerChildIndex = getRightChildIndex(index)
            }
            
            if items[index] < items[smallerChildIndex] {
                break
            } else {
                swap(indexOne: index, indexTwo: smallerChildIndex)
            }
            index = smallerChildIndex
        }
    }
    
    
    // API
    // Returns the value of the parent node
    public func peek() -> Int {
        if !items.isEmpty {
            return items[0]
        } else {
            fatalError()
        }
    }
    
    // Returns and removes the value of the parent node from the Heap
    mutating public func poll() -> Int {
        if !items.isEmpty {
            let item = items[0]
            items[0] = items[items.count - 1]
            heapifyDown()
            items.removeLast()
            return item
        } else {
            fatalError()
        }
    }
    
    // Appends a new value to the end of the Heap
    mutating public func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
}
