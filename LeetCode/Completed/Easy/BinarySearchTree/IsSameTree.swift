//
//  IsSameTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/12/22.
//

import Foundation

// MARK: - 100. Same Tree

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil { return true }
    guard let p = p, let q = q else { return false }
    return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
}
