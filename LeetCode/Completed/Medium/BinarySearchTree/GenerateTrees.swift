//
//  GenerateTrees.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 28/01/24.
//

import Foundation

// MARK: - 95. Unique Binary Search Trees II

class GenerateTrees {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        return generate(left: 1, right: n)
    }
    
    private func generate(left: Int, right: Int) -> [TreeNode?] {
        if left > right {
            return [nil]
        }
        var result: [TreeNode?] = []
        for val in left...right {
            for leftTree in generate(left: left, right: val - 1) {
                for rightTree in generate(left: val + 1, right: right) {
                    let root = TreeNode(val, leftTree, rightTree)
                    result.append(root)
                }
            }
        }
        return result
    }
}
