//
//  IsValidBST.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/22.
//

import Foundation

// MARK: - 98. Validate Binary Search Tree

func isValidBST(_ root: TreeNode?) -> Bool {
   return isBst(root, min: Int.min, max: Int.max)
}

private func isBst(_ node: TreeNode?, min: Int, max: Int) -> Bool {
    guard let node = node else { return true }
    if node.val <= min || node.val >= max { return false }
    return isBst(node.left, min: min, max: node.val) &&
           isBst(node.right, min: node.val, max: max)
}
