//
//  BinaryTreeMaximumPathSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 01/02/24.
//

import Foundation

// MARK: - 124. Binary Tree Maximum Path Sum

class BinaryTreeMaximumPathSum {
    var answer = 0
    func maxPathSum(_ root: TreeNode?) -> Int {
        answer = root?.val ?? 0
        traverse(root)
        return answer
    }
    
    @discardableResult
    private func traverse(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let maxLeftPath = max(traverse(root.left), 0)
        let maxRightPath = max(traverse(root.right), 0)
        answer = max(answer, maxLeftPath + maxRightPath + root.val)
        return max(maxLeftPath, maxRightPath) + root.val
    }
}
