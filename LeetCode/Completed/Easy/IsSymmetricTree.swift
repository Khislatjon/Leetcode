//
//  IsSymmetricTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 03/12/22.
//

import Foundation

// MARK: - 101. Symmetric Tree

func isSymmetric(_ root: TreeNode?) -> Bool {
    return isSymmetrics(root, root)
}

private func isSymmetrics(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {
    if node1 == nil && node2 == nil { return true }
    if node1 == nil || node2 == nil { return false }
    if node1?.val != node2?.val { return false }
    return isSymmetrics(node1?.left, node2?.right) && isSymmetrics(node1?.right, node2?.left)
}

