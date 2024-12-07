//
//  RecoverTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/01/24.
//

import Foundation

// MARK: - 99. Recover Binary Search Tree

class RecoverTree {
    var prev: TreeNode? = TreeNode(Int.min)
    var first: TreeNode?
    var middle: TreeNode?
    var last: TreeNode?
    
    func recoverTree(_ root: TreeNode?) {
        inorder(root: root)
        
        if let first = first, let last = last {
            let temp = first.val
            first.val = last.val
            last.val = temp
        } else if let first = first, let middle = middle {
            let temp = first.val
            first.val = middle.val
            middle.val = temp
        }
    }
    
    private func inorder(root: TreeNode?) {
        guard let root = root else { return }
        inorder(root: root.left)
        
        if let prev = prev, root.val < prev.val {
            if first == nil {
                first = prev
                middle = root
            } else {
                last = root
            }
        }
        
        prev = root
        inorder(root: root.right)
    }
}
