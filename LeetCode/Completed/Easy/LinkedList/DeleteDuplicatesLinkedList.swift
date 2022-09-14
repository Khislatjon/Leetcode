//
//  DeleteDuplicatesLinkedList.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/08/22.
//

import Foundation

// MARK: - 83. Remove Duplicates from Sorted List

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var current = head
    
    while (current?.next != nil) {
        if current?.val == current?.next?.val {
            current?.next = current?.next?.next
        } else {
            current = current?.next
        }
    }
    return head
}

// Test in main
//let five = ListNode(3)
//let four = ListNode(3, five)
//let three = ListNode(2, four)
//let two = ListNode(2, three)
//let one = ListNode(1, two)
//
//var resultHead = deleteDuplicates(one)
//while resultHead != nil {
//    print(resultHead?.val)
//    resultHead = resultHead?.next
//}
