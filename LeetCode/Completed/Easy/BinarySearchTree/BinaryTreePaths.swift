//
//  BinaryTreePaths.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/12/22.
//

import Foundation

// MARK: - 257. Binary Tree Paths

class SolutionBinaryTreePaths {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else {return []}
        var result = [String]()
        var path = ""
        helper(root, &path, &result)
        return result
    }

    func helper(_ root : TreeNode?, _ path : inout String, _ result:inout[String]) {
        guard let root = root else { return }
        path = path + String(root.val)
        if root.right == nil && root.left == nil {
            result.append(path)
            return
        }
        
        if let left = root.left {
            var temp = path + "->"
            helper(left, &temp, &result)
        }
        
        if let right = root.right {
            var temp = path + "->"
            helper(right, &temp, &result)
        }
    }
}

