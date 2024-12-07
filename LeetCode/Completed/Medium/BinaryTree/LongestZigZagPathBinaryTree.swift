//
//  LongestZigZagPathBinaryTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/12/2024.
//

import Foundation

// MARK: - 1372. Longest ZigZag Path in a Binary Tree
func longestZigZag(_ root: TreeNode?) -> Int {
    func helper(_ root: TreeNode?, isPrevStepLeft: Bool, count: Int) -> Int {
        guard let root = root else { return count }
        if isPrevStepLeft {
            return max(helper(root.right, isPrevStepLeft: false, count: count + 1),
                       helper(root.left, isPrevStepLeft: true, count: 0))
        } else {
            return max(helper(root.left, isPrevStepLeft: true, count: count + 1),
                       helper(root.right, isPrevStepLeft: false, count: 0))
        }
    }
    return max(helper(root?.left, isPrevStepLeft: true, count: 0),
               helper(root?.right, isPrevStepLeft: false, count: 0))
}
