//
//  ListNode.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 23/08/22.
//

import Foundation

public class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
