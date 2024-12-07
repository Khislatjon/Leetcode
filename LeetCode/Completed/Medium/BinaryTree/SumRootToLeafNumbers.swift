//
//  SumRootToLeafNumbers.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/02/24.
//

import Foundation

// MARK: - 129. Sum Root to Leaf Numbers

class SumRootToLeafNumbers {
    func sumNumbers(_ root: TreeNode?) -> Int {
        return helper(root, 0, 0)
    }
    
    private func helper(_ root: TreeNode?, _ num: Int, _ sum: Int) -> Int {
        guard let root = root else { return 0 }
        let curNum = num * 10 + root.val
        
        if root.left == nil && root.right == nil {
            return curNum + sum
        }
        
        return sum + helper(root.left, curNum, sum) + helper(root.right, curNum, sum)
    }
}
