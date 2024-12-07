//
//  KthLargestSumBinaryTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/10/2024.
//

import Foundation

// MARK: - 2583. Kth Largest Sum in a Binary Tree

func kthLargestLevelSum(_ root: TreeNode?, _ k: Int) -> Int {
    guard let root = root else { return -1 }
    var sums: [Int] = []
    var queue = [root]
    
    while !queue.isEmpty {
        var count = queue.count
        var sum = 0
        while count > 0 {
            let node = queue.removeFirst()
            sum += node.val
            count -= 1
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        sums.append(sum)
    }
    sums.sort { $0 > $1 }
    return sums.count >= k ? sums[k-1] : -1
}
