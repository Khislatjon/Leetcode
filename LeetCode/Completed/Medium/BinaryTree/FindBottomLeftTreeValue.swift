//
//  FindBottomLeftTreeValue.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/02/24.
//

import Foundation

// MARK: - 513. Find Bottom Left Tree Value

class FindBottomLeftTreeValue {
    var bottomLeft = -1
    var maxDepth = -1
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        helper(root, depth: 0)
        return bottomLeft
    }
    
    func helper(_ root: TreeNode?, depth: Int) {
        guard let root = root else { return }
        
        if maxDepth < depth {
            maxDepth = depth
            bottomLeft = root.val
        }
        helper(root.left, depth: depth + 1)
        helper(root.right, depth: depth + 1)
    }
}

