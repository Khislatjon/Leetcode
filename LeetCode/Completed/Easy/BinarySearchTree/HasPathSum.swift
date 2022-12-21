//
//  HasPathSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/12/22.
//

import Foundation

// MARK: - 112. Path Sum

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    guard let root = root else { return false }
    if root.left == nil && root.right == nil && targetSum - root.val == 0 {
        return true
    }
    return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
}
