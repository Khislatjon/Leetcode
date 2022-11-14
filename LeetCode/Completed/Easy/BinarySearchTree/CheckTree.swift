//
//  CheckTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/11/22.
//

import Foundation

// MARK: - 1022. Sum of Root To Leaf Binary Numbers

func checkTree(_ root: TreeNode?) -> Bool {
    guard let root = root, let l = root.left, let r = root.right else { return false }
    return root.val == l.val + r.val
}
