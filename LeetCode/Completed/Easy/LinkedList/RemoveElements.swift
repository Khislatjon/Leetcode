//
//  RemoveElements.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/09/22.
//

import Foundation

// MARK: - 203. Remove Linked List Elements

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard head != nil else { return nil }
    let dummyNode: ListNode? = ListNode(0)
    dummyNode?.next = head
    var node = dummyNode
    
    while node != nil {
        if node?.next?.val == val {
            node?.next = node?.next?.next
        } else {
            node = node?.next
        }
    }
    return dummyNode?.next
}
