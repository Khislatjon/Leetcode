//
//  main.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/07/22.
//

import Foundation

let five = ListNode(3)
let four = ListNode(3, five)
let three = ListNode(2, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

var resultHead = reverseList(one)
while resultHead != nil {
    print(resultHead?.val as Any)
    resultHead = resultHead?.next
}
