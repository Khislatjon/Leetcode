//
//  BinarySearchTree.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/10/22.
//

import Foundation

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class BinarySearchTree {
    var root: TreeNode?
    
    init(root: TreeNode? = nil) {
        self.root = root
    }
    
    func insert(_ value: Int) {
        let newNode = TreeNode(value)
        if root == nil {
            root = newNode
        } else {
            var currentNode = root
            while true {
                if value < currentNode?.val ?? 0 {
                    if currentNode?.left == nil {
                        currentNode?.left = newNode
                        return
                    }
                    currentNode = currentNode?.left
                } else {
                    if currentNode?.right == nil {
                        currentNode?.right = newNode
                        return
                    }
                    currentNode = currentNode?.right
                }
            }
        }
    }
    
    func lookup(_ value: Int) {
        
    }
}
