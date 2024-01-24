//
//  MaxDepth.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 17/01/24.
//

import Foundation

// MARK: - 559. Maximum Depth of N-ary Tree

func maxDepth(_ root: Node?) -> Int {
    guard let root = root else { return 0 }
    let depth = 1
    var maxSub = 0
    for node in root.children {
        maxSub = max(maxDepth(node), maxSub)
    }
    return depth + maxSub
}
