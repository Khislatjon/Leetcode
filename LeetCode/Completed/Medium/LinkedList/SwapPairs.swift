//
//  SwapPairs.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 09/09/22.
//

import Foundation

// MARK: - 24. Swap Nodes in Pairs

func swapPairs(_ head: ListNode?) -> ListNode? {
    let temp = ListNode(0)
    temp.next = head
    var current: ListNode? = temp
    
    while (current?.next != nil && current?.next?.next != nil) {
        let first = current?.next
        let second = current?.next?.next
        
        first?.next = second?.next
        current?.next = second
        current?.next?.next = first
        
        current = current?.next?.next
    }
    return temp.next
}
