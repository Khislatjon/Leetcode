//
//  PreorderTraversal.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/11/22.
//

import Foundation

// Preorder traversal - traversing nodes root -> left -> right
// MARK: - 144. Binary Tree Preorder Traversal

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    var result = [Int]()
    preorderHelper(root, &result)
    return result
}

func preorderHelper(_ root :TreeNode?, _ result :inout [Int]) {
    guard let root = root else { return }
    result.append(root.val)
    preorderHelper(root.left, &result)
    preorderHelper(root.right, &result)
}
