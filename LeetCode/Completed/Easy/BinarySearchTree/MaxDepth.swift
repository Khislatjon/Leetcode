//
//  MaxDepth.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/12/22.
//

import Foundation

// MARK: - 104. Maximum Depth of Binary Tree

func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var levelOrders = [[Int]]()
    var queue = [TreeNode]()
    queue.append(root)
    
    while !queue.isEmpty {
        var count = queue.count
        var temp = [Int]()
        while count > 0 {
            let node = queue.removeFirst()
            temp.append(node.val)
            count -= 1
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        levelOrders.append(temp)
    }
    return levelOrders.count
}
