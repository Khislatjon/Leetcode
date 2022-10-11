//
//  ReorderList.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 18/09/22.
//

import Foundation

// MARK: - 143. Reorder List

func reorderList(_ head: ListNode?) {
    guard head != nil && head?.next != nil else { return }
    
    // head of first list
    let l1 = head
    
    // head of second list
    var slow = head
    
    // tail of first list
    var prev: ListNode? = nil
    
    // tail of second list
    var fast = head
    
    while fast != nil && fast?.next != nil {
        prev = slow
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    // separating list
    prev?.next = nil
    
    let l2 = reverseList(head: slow)
    mergeList(l1: l1, l2: l2)
}

func reverseList(head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var currentNode = head
    
    while currentNode != nil {
        let nextNode = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = nextNode
    }
    return prev
}

func mergeList(l1: ListNode?, l2: ListNode?) {
    var l1 = l1
    var l2 = l2
    while l1 != nil {
        let l1Next = l1?.next
        let l2Next = l2?.next
        
        l1?.next = l2
        if l1Next == nil {
            break
        }
        l2?.next = l1Next
        
        l1 = l1Next
        l2 = l2Next
    }
}
