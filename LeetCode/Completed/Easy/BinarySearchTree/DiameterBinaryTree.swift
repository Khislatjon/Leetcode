//
//  DiameterBinaryTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 27/02/24.
//

// MARK: - 543. Diameter of Binary Tree

import Foundation

class DiameterBinaryTree {
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var maxV = 0
        _ = dfs(root, &maxV)
        return maxV
    }
    
    func dfs(_ root: TreeNode?, _ sum: inout Int) -> Int {
        guard let root = root else { return 0 }
        let lSum = dfs(root.left, &sum)
        let rSum = dfs(root.right, &sum)
        sum = max(sum, lSum + rSum)
        return max(lSum, rSum) + 1
    }
}
