//
//  MergeTrees.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/01/24.
//

import Foundation

// MARK: - 617. Merge Two Binary Trees

class MergeTrees {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil && root2 == nil { return nil }
        var result: TreeNode? = TreeNode(0)
        helper(root1, root2, &result)
        return result
    }
    
    @discardableResult
    func helper(_ root1: TreeNode?, _ root2: TreeNode?, _ result: inout TreeNode?) -> TreeNode? {
        var sum = 0
        if root1 != nil || root2 != nil {
            sum += root1?.val ?? 0
            sum += root2?.val ?? 0
            result = TreeNode(sum)
            let resultCopy = TreeNode(sum)
            result?.left = helper(root1?.left, root2?.left, &resultCopy.left)
            result?.right = helper(root1?.right, root2?.right, &resultCopy.right)
            return result
        }
        return nil
    }
}

