//
//  OddEvenLinkedList.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/01/24.
//

import Foundation

// MARK: - 328. Odd Even Linked List
// Steps:
// 1. Iterate through odd nodes
// 2. Store Even Head and Iterate through even nodes
// 3. Add even head to odd nodes' tail

func oddEvenList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    
    var odd = head
    var even = head?.next
    let evenHead = even
    
    while even?.next != nil {
        odd?.next = odd?.next?.next
        even?.next = even?.next?.next
        odd = odd?.next
        even = even?.next
    }
    
    odd?.next = evenHead
    return head
}
