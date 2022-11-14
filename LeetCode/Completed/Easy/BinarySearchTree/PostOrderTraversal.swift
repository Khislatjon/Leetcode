//
//  PostOrderTraversal.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 02/11/22.
//

import Foundation

// Postorder traversal - traversing nodes left -> right -> root
// MARK: - 590. N-ary Tree Postorder Traversal

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func postorder(_ root: Node?) -> [Int] {
    var nodes = [Int]()
    traverse(root, nodes: &nodes)
    return nodes
}

func traverse(_ root: Node?, nodes: inout [Int]) {
    guard let root = root else { return }
    for child in root.children {
        traverse(child, nodes: &nodes)
    }
    nodes.append(root.val)
}
