//
//  BalanceBST.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/06/24.
//

import Foundation

// MARK: - 1382. Balance a Binary Search Tree

class BalanceBST {
    var values: [Int] = []
    
    func balanceBST(_ root: TreeNode?) -> TreeNode? {
        inorderTraversal(root)
        return buildBST(0, values.count-1)
    }
    
    func inorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        inorderTraversal(root.left)
        values.append(root.val)
        inorderTraversal(root.right)
    }
    
    func buildBST(_ l: Int, _ h: Int) -> TreeNode? {
        guard l <= h else { return nil }
        let m = l + (h - l) / 2
        let cur = TreeNode(values[m])
        cur.left = buildBST(l, m-1)
        cur.right = buildBST(m+1, h)
        return cur
    }
}
