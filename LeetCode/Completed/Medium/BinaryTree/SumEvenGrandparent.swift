//
//  SumEvenGrandparent.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 11/11/22.
//

import Foundation

// MARK: - 1315. Sum of Nodes with Even-Valued Grandparent

class SolutionSumEvenGrandparent {
    var sum = 0
    
    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
        traverse(root)
        return sum
    }
    
    func traverse(_ root: TreeNode?) {
        guard let root = root else { return }
        if root.val % 2 == 0 {
            sum += root.left?.left?.val ?? 0
            sum += root.left?.right?.val ?? 0
            sum += root.right?.left?.val ?? 0
            sum += root.right?.right?.val ?? 0
        }
        traverse(root.left)
        traverse(root.right)
    }
}
