//
//  ZigzagLevelOrder.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/12/22.
//

import Foundation

// MARK: - 103. Binary Tree Zigzag Level Order Traversal

func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }
    var levelOrders: [[Int]] = []
    var queue = [TreeNode]()
    queue.append(root)
    
    while !queue.isEmpty {
        var count = queue.count
        var temp: [Int] = []
        while(count > 0) {
            let node = queue.removeFirst()
            temp.append(node.val)
            count -= 1
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        
        if levelOrders.count % 2 == 0 {
            levelOrders.append(temp)
        } else {
            levelOrders.append(temp.reversed())
        }
    }
    return levelOrders
}
