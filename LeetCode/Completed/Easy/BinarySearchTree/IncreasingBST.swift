//
//  IncreasingBST.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/11/22.
//

import Foundation

// MARK: - 897. Increasing Order Search Tree

class SolutionIncreasingBST {
    var startNode: TreeNode? = TreeNode(0)
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        var dummyNode: TreeNode? = startNode
        traverse(root)
        return dummyNode?.right
    }
    
    func traverse(_ root: TreeNode?) {
        guard let root = root else { return }
        traverse(root.left)
        
        root.left = nil
        startNode?.right = root
        startNode = startNode?.right
        
        traverse(root.right)
    }
}
