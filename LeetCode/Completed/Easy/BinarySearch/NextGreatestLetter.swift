//
//  NextGreatestLetter.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 07/10/22.
//

import Foundation

// MARK: - 744. Find Smallest Letter Greater Than Target

func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
    var left = 0
    var right = letters.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if letters[mid] > target {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return letters[left % letters.count]
}
