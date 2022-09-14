//
//  DeleteDuplicatesLinkedList2.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/08/22.
//

import Foundation

// MARK: - 82. Remove Duplicates from Sorted List II

func deleteDuplicates2(_ head: ListNode?) -> ListNode? {
    let dummy = ListNode(0, head)
    var prevNode: ListNode? = dummy
    var current = head
    
    while current != nil {
        if current?.next != nil && current?.val == current?.next?.val {
            // skip nodes until distinct value is not found
            while current?.next != nil && current?.val == current?.next?.val {
                current = current?.next
            }
            prevNode?.next = current?.next
        } else {
            prevNode = prevNode?.next
        }
        current = current?.next
    }
    
    return dummy.next
}

// Test in main
//let six = ListNode(4)
//let five = ListNode(3, six)
//let four = ListNode(3, five)
//let three = ListNode(2, four)
//let two = ListNode(2, three)
//let one = ListNode(2, two)
//
//var resultHead = deleteDuplicates2(one)
//while resultHead != nil {
//    print(resultHead?.val)
//    resultHead = resultHead?.next
//}
