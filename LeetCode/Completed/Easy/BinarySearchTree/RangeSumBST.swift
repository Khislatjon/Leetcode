//
//  RangeSumBST.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 06/11/22.
//

import Foundation

// MARK: - 938. Range Sum of BST

class SolutionRangeSumBST {
    var sum = 0
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        for n in low...high {
            if hasNumber(in: root, n: n) {
                sum += n
            }
        }
        return sum
    }

    func hasNumber(in tree: TreeNode?, n: Int) -> Bool {
        guard let root = tree else { return false }
        if n < root.val {
            return hasNumber(in: root.left, n: n)
        } else if n > root.val {
            return hasNumber(in: root.right, n: n)
        } else {
            return true
        }
    }
}

