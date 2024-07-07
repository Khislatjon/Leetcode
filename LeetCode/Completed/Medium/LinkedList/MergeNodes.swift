//
//  MergeNodes.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 04/07/24.
//

import Foundation

// MARK: - 2181. Merge Nodes in Between Zeros

class MergeNodes {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        helper(head?.next)
    }
    
    func helper(_ node: ListNode?) -> ListNode? {
        guard var node = node else { return nil }
        var sum = 0
        while node.val != 0 {
            sum += node.val
            node = node.next ?? ListNode(0)
        }
        node.val = sum
        node.next = helper(node.next)
        return node
    }
}

