//
//  PalindromeLinkedList.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/08/22.
//

import Foundation

// MARK: - 234. Palindrome Linked List
// Solution 2: Reverse whole linked list. Compare with original till middle
// Solution 3: Iterate through half and add values to stack. Compare second half with stack's top values

func isPalindrome(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while (fast != nil && fast?.next != nil) {
        fast = fast?.next?.next
        slow = slow?.next
    }
    
    fast = head
    slow = reverseHalfList(slow)
    
    while slow != nil {
        if fast?.val != slow?.val {
            return false
        }
        fast = fast?.next
        slow = slow?.next
    }
    return true
}

func reverseHalfList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var currentNode = head
    
    while currentNode != nil {
        let next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    return prev
}

// Test in main
//let six = ListNode(1)
//let five = ListNode(7, six)
//let four = ListNode(2, five)
//
//let three = ListNode(2, four)
//let two = ListNode(7, three)
//let one = ListNode(1, two)
//
//print(isPalindrome(one))
