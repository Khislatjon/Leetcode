//
//  DeleteMiddleNode.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 29/08/22.
//

import Foundation

// MARK: - 2095. Delete the Middle Node of a Linked List

func deleteMiddle(_ head: ListNode?) -> ListNode? {
    guard head?.next != nil else { return nil }
    var slow = head
    var fast = head?.next?.next
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    slow?.next = slow?.next?.next
    return head
}

//Test in main
//let six = ListNode(val: 4)
//let five = ListNode(val: 3, next: six)
//let four = ListNode(val: 5, next: five)
//let three = ListNode(val: 2, next: four)
//let two = ListNode(val: 7, next: three)
//let one = ListNode(val: 10, next: two)
//
//var resultHead = deleteMiddle(one)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}
