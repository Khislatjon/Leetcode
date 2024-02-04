//
//  BuildTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/11/22.
//

import Foundation

// MARK: - 105. Construct Binary Tree from Preorder and Inorder Traversal

class SolutionBuildTree {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty || !inorder.isEmpty else { return nil }
        let root = TreeNode(preorder[0])
        let mid = inorder.firstIndex(of: root.val)!
        root.left = buildTree(Array(preorder[1..<mid+1]), Array(inorder[0..<mid]))
        root.right = buildTree(Array(preorder[mid+1..<preorder.count]), Array(inorder[mid+1..<preorder.count]))
        return root
    }
}
