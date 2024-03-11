//
//  EvenOddTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/02/24.
//

import Foundation

// MARK: - 1609. Even Odd Tree

func isEvenOddTree(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    var queue: [TreeNode] = [root]
    var level = 0
    while (!queue.isEmpty) {
        let size = queue.count
        var prev: Int?
        for _ in 0..<size {
            let node = queue.removeFirst()
            if level % 2 == 0 {
                if let prev = prev {
                    if prev >= node.val {
                        return false
                    }
                }
                prev = node.val
                if node.val % 2 == 0 { return false }
            } else {
                if let prev = prev {
                    if prev <= node.val {
                        return false
                    }
                }
                prev = node.val
                if node.val % 2 != 0 { return false }
            }
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
        level += 1
    }
    return true
}
