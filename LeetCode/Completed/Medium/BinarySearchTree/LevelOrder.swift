//
//  LevelOrder.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/11/22.
//

import Foundation

// MARK: - 102. Binary Tree Level Order Traversal

func levelOrder(_ root: TreeNode?) -> [[Int]] {
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
        levelOrders.append(temp)
    }
    return levelOrders
}
