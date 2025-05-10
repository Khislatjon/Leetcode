//
//  LeafSimilarTrees.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/12/2024.
//

import Foundation
 
// MARK: - 872. Leaf-Similar Trees

class LeafSimilarTrees {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var nodes1: [Int] = []
        var nodes2: [Int] = []
        
        helper(root1, &nodes1)
        helper(root2, &nodes2)
        
        guard nodes1.count == nodes2.count else { return false }
        for i in nodes1.indices {
            if nodes1[i] != nodes2[i] {
                return false
            }
        }
        return true
    }

    private func helper(_ root: TreeNode?, _ arr: inout [Int]) {
        guard let root = root else { return }
        guard root.left != nil || root.right != nil else {
            arr.append(root.val )
            return
        }
        helper(root.left, &arr)
        helper(root.right, &arr)
    }
}
