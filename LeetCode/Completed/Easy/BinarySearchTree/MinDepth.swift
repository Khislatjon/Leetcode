//
//  MinDepth.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 31/01/24.
//

import Foundation

// MARK: - 111. Minimum Depth of Binary Tree

class MinDepth {
    // DFS
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var res = Int.max
            
        func helper(_ root: TreeNode?, minD: Int) {
            guard let root = root else { return }
            if root.left == nil, root.right === nil {
                res = min(res, minD)
                return
            }
            helper(root.left, minD: minD+1)
            helper(root.right, minD: minD+1)
        }
            
        helper(root, minD: 1)
            
        return res
    }

    // BFS
//    func minDepth(_ root: TreeNode?) -> Int {
//        guard let root = root else { return 0 }
//        var queue: [TreeNode] = [root]
//        var res = 1
//            
//        while !queue.isEmpty {
//            var count = queue.count
//            while count > 0 {
//                let node = queue.removeFirst()
//                if node.left == nil && node.right == nil {
//                    return res
//                }
//                if let left = node.left {
//                    queue.append(left)
//                }
//                if let right = node.right {
//                    queue.append(right)
//                }
//                  count -= 1
//            }
//            res += 1
//           }
//            
//        return res
//    }
//
//    // Recursive
//    func minDepth(_ root: TreeNode?) -> Int {
//        guard let root = root else { return 0 }
//        let left = minDepth(root.left)
//        let right = minDepth(root.right)
//        return 1 + ((left == 0 || right == 0) ? (left + right) : min(left, right))
//    }
}
