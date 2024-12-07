//
//  ConstructBinaryTreeFromInorderPostorderTraversal.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/01/24.
//

import Foundation

// MARK: - 106. Construct Binary Tree from Inorder and Postorder Traversal

class ConstructBinaryTreeFromInorderPostorderTraversal {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        var postorderCopy = postorder
        var dict: [Int: Int] = [:]
        for (i, v) in inorder.enumerated() {
            dict[v] = i
        }
        
        func helper(left: Int, right: Int) -> TreeNode? {
            if left > right { return nil }
            let root = TreeNode(postorderCopy.removeLast())
            guard let index = dict[root.val] else { return nil }
            root.right = helper(left: index+1, right: right)
            root.left = helper(left: left, right: index-1)
            return root
        }
        
        return helper(left: 0, right: inorder.count-1)
    }
}
