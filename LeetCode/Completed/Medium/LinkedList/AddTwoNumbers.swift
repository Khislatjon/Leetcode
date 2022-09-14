//
//  AddTwoNumbers.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 30/08/22.
//

import Foundation

// MARK: - 2. Add Two Numbers

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var list1 = l1
    var list2 = l2
    let dummyHead: ListNode? = ListNode(0)
    var list3 = dummyHead
    var carry = 0
    
    while list1 != nil || list2 != nil {
        let val1 = list1?.val ?? 0
        let val2 = list2?.val ?? 0
        let currentSum = val1 + val2 + carry
        carry = currentSum / 10
        list3?.next = ListNode(currentSum % 10)
        
        list1 = list1?.next
        list2 = list2?.next
        list3 = list3?.next
    }
    
    if carry > 0 {
        let newNode = ListNode(carry)
        list3?.next = newNode
        list3 = list3?.next
    }
    return dummyHead?.next
}

// Test in main
//let six = ListNode(4)
//let five = ListNode(3, six)
//let four = ListNode(5, five)
//
//let three = ListNode(2)
//let two = ListNode(7, three)
//let one = ListNode(1, two)
//
//var resultHead = addTwoNumbers(one, four)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}
