//
//  CreateBinaryTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 15/07/24.
//

import Foundation

// MARK: - 2196. Create Binary Tree From Descriptions

func createBinaryTree(_ descriptions: [[Int]]) -> TreeNode? {
    var nodes: [Int: TreeNode] = [:]
    var children = Set<Int>()
    
    for d in descriptions {
        let parent = d[0]
        let child = d[1]
        let isLeft = d[2]
        
        children.insert(child)
        
        if nodes[parent] == nil {
            nodes[parent] = TreeNode(parent)
        }
        if nodes[child] == nil {
            nodes[child] = TreeNode(child)
        }
        
        if isLeft == 1 {
            nodes[parent]?.left = nodes[child]
        } else {
            nodes[parent]?.right = nodes[child]
        }
    }
    
    let parents = descriptions.map { $0[0] }
    for parent in parents {
        if !children.contains(parent) {
            return nodes[parent]
        }
    }
    return nil
}
