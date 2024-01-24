//
//  DeleteNode.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/01/24.
//

import Foundation

// MARK: - 237. Delete Node in a Linked List

func deleteNode(_ node: ListNode?) {
    guard let nextNode = node?.next else { return }
    node?.val = nextNode.val
    node?.next = nextNode.next
}
