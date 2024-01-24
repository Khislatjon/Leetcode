//
//  EvaluateTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/01/24.
//

import Foundation

// MARK: - 2331. Evaluate Boolean Binary Tree

func evaluateTree(_ root: TreeNode?) -> Bool {
    guard let root = root else { return false }
    
    switch root.val {
    case 0:
        return false
    case 1:
        return true
    case 2:
        return evaluateTree(root.left) || evaluateTree(root.right)
    case 3:
        return evaluateTree(root.left) && evaluateTree(root.right)
    default:
        return false
    }
}
