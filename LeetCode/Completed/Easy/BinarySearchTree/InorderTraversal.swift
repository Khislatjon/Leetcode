//
//  InorderTraversal.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/22.
//

import Foundation

// Inorder traversal - traversing nodes in ascending order: left -> root -> right
// MARK: - 94. Binary Tree Inorder Traversal

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    var result = [Int]()
    helper(root, &result)
    return result
}

func helper(_ root :TreeNode?, _ result : inout [Int]) {
    guard let root = root else { return }
    helper(root.left, &result)
    result.append(root.val)
    helper(root.right, &result)
}
