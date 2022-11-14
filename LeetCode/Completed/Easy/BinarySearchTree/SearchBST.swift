//
//  SearchBST.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/11/22.
//

import Foundation

// MARK: - 700. Search in a Binary Search Tree

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else { return nil }
    if root.val > val {
        return searchBST(root.left, val)
    } else if root.val < val {
        return searchBST(root.right, val)
    } else {
        return root
    }
}
