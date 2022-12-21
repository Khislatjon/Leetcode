//
//  PathSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/12/22.
//

import Foundation

// MARK: - 113. Path Sum II

class SolutionPathSum {
    var paths = [[Int]]()
    
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        guard let root = root else { return [] }
        var stack = [Int]()
        helper(root, targetSum, &stack)
        return paths
    }
    
    func helper(_ root: TreeNode?, _ sum: Int, _ stack: inout [Int]) {
        guard let root = root else { return }
        stack.append(root.val)
        if root.left == nil && root.right == nil && sum == root.val {
            paths.append(stack)
        }
        helper(root.left, sum - root.val, &stack)
        helper(root.right, sum - root.val, &stack)
        stack.removeLast()
    }
}
