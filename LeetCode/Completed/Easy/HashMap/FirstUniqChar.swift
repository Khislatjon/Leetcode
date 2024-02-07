//
//  FirstUniqChar.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 05/02/24.
//

import Foundation

// MARK: - 387. First Unique Character in a String

func firstUniqChar(_ s: String) -> Int {
   var dict = [Character: Int]()
   for char in s {
       dict[char] = dict[char] != nil ? dict[char]! + 1 : 1
   }
    
   for (i, char) in s.enumerated() {
       if dict[char] == 1 {
           return i
       }
   }
   return -1
}
