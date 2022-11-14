//
//  BstToGst.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 13/11/22.
//

import Foundation

// MARK: - 1038. Binary Search Tree to Greater Sum Tree

class SolutionBstToGst {
    var sum = 0
    
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        traverse(root)
        return root
    }
    
    func traverse(_ root: TreeNode?) {
        guard let root = root else { return }
        traverse(root.right)
        sum += root.val
        root.val += sum
        traverse(root.left)
    }
}
