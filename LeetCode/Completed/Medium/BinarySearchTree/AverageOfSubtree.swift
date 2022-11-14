//
//  AverageOfSubtree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/11/22.
//

import Foundation

// MARK: - 2265. Count Nodes Equal to Average of Subtree

class SolutionAverageOfSubtree {
    var result = 0
    func averageOfSubtree(_ root: TreeNode?) -> Int {
        let _ = traverse(root)
        return result
    }
    
    func traverse(_ root: TreeNode?) -> (Int, Int) {
        guard let root = root else { return (0, 0) }
        
        var left = traverse(root.left)
        var right = traverse(root.right)
        
        var total = left.0 + right.0 + root.val
        var count = left.1 + right.1 + 1
        
        if total / count == root.val {
            result += 1
        }
        return (total, count)
    }
}
