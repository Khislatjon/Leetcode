//
//  PseudoPalindromicPaths.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 24/01/24.
//

import Foundation

// MARK: - 1457. Pseudo-Palindromic Paths in a Binary Tree

class PseudoPalindromicPaths {
    func pseudoPalindromicPaths(_ root: TreeNode?) -> Int {
        return helper(root)
    }
    
    private func helper(_ root: TreeNode?, _ nums: Set<Int> = []) -> Int {
        guard let root = root else { return 0 }
        var set = nums
        if set.contains(root.val) {
            set.remove(root.val)
        } else {
            set.insert(root.val)
        }
        
        if root.left == nil, root.right == nil {
            return set.count <= 1 ? 1 : 0
        }
        
        return helper(root.left, set) + helper(root.right, set)
    }
}
