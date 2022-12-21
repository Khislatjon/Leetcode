//
//  BuildTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 14/11/22.
//

import Foundation

// MARK: - 105. Construct Binary Tree from Preorder and Inorder Traversal

class SolutionBuildTree {
    private var preorder = [Int]()
    private var inorder = [Int]()
    private var preorderIndex = 0

    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        self.preorder = preorder
        self.inorder = inorder
        return getNode(leftInorderIndex: 0, rightInorderIndex: inorder.count - 1)
    }

    private func getNode(leftInorderIndex: Int, rightInorderIndex: Int) -> TreeNode? {
        guard leftInorderIndex <= rightInorderIndex else { return nil }
        let val = preorder[preorderIndex]
        preorderIndex += 1
        let node = TreeNode(val)
        let inorderIndex = inorder.firstIndex(of: val)!
        node.left = getNode(leftInorderIndex: leftInorderIndex, rightInorderIndex: inorderIndex - 1)
        node.right = getNode(leftInorderIndex: inorderIndex + 1, rightInorderIndex: rightInorderIndex)
        return node
    }
}
