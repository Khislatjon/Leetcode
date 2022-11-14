//
//  DeepestLeavesSum.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/11/22.
//

import Foundation

// MARK: - 1302. Deepest Leaves Sum

class SolutionDeepestLeavesSum {
    var sum = 0
    var currentDepth = 0
    
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        addLastLeaf(root, depth: 0)
        return sum
    }

    func addLastLeaf(_ root: TreeNode?, depth: Int) {
        guard let root = root else { return }
        addLastLeaf(root.left, depth: depth + 1)
        addLastLeaf(root.right, depth: depth + 1)
        if root.left == nil && root.right == nil {
            if currentDepth == depth {
                sum += root.val
            } else if currentDepth < depth {
                sum = root.val
                currentDepth = depth
            }
        }
    }
}

