//
//  InsertIntoBSTAVL.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 20/11/22.
//

import Foundation

// MARK: - 701. Insert into a Binary Search Tree

class SolutionInsertIntoBST {
    // 1. Iterative approach
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }
        var currentNode = root
        while true {
            if currentNode.val > val {
                if let left = currentNode.left {
                    currentNode = left
                } else {
                    currentNode.left = TreeNode(val)
                    break
                }
            } else {
                if let right = currentNode.right {
                    currentNode = right
                } else {
                    currentNode.right = TreeNode(val)
                    break
                }
            }
        }
        return root
    }
    
    // 2. Recursive approach
    func insertIntoBSTRecursive(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }
        if root.val > val {
            root.left = insertIntoBSTRecursive(root.left, val)
        } else {
            root.right = insertIntoBSTRecursive(root.right, val)
        }
        return root
    }
}
