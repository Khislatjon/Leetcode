//
//  SumRootToLeaf.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/11/22.
//

import Foundation

// MARK: - 1022. Sum of Root To Leaf Binary Numbers

class SolutionSumRootToLeaf {
    var codes: [String] = []
    
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var str = ""
        var sum = 0
        traverse(root, str: str)
        
        for code in codes {
            if let n = Int(code, radix: 2) {
                sum += n
            }
        }
        return sum
    }

    func traverse(_ root: TreeNode?, str: String) {
        guard let root = root else { return }
        let fullStr = str + String(root.val)
        if root.left == nil && root.right == nil {
            codes.append(fullStr)
        }
        
        traverse(root.left, str: fullStr)
        traverse(root.right, str: fullStr)
    }
}
