//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 08/09/22.
//

import Foundation

// MARK: - 21. Merge Two Sorted Lists

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var first = list1
    var second = list2
    let tempNode = ListNode(0)
    var currentNode: ListNode? = tempNode
    
    while first != nil && second != nil {
        if first?.val ?? 0 < second?.val ?? 0 {
            currentNode?.next = first
            first = first?.next
        } else {
            currentNode?.next = second
            second = second?.next
        }
        currentNode = currentNode?.next
    }
    
    while first != nil {
        currentNode?.next = first
        currentNode = currentNode?.next
        first = first?.next
    }
    
    while second != nil {
        currentNode?.next = second
        currentNode = currentNode?.next
        second = second?.next
    }
    return tempNode.next
}
