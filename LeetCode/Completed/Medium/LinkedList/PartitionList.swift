//
//  PartitionList.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/08/22.
//

import Foundation

// MARK: - 86. Partition List

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    var node = head
    let dummyLeft: ListNode? = ListNode(0)
    let dummyRight: ListNode? = ListNode(0)
    var left = dummyLeft
    var right = dummyRight
    
    while node != nil {
        if node?.val ?? 0 < x {
            left?.next = node
            left = left?.next
        } else {
            right?.next = node
            right = right?.next
        }
        node = node?.next
    }
    
    left?.next = dummyRight?.next
    right?.next = nil
    return dummyLeft?.next
}

// Test in main
//let six = ListNode(4)
//let five = ListNode(3, six)
//let four = ListNode(5, five)
//let three = ListNode(2, four)
//let two = ListNode(7, three)
//let one = ListNode(1, two)
//
//var resultHead = partition(one, 3)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}
