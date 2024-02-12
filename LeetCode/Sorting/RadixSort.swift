//
//  RadixSort.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 12/02/24.
//

import Foundation

// NOTE: This implementation does not handle negative numbers
// For negatives: At the beginning of your sorting algorithm all you have to do is partition your array into 2 around the value 0. After that, radix sort below and above the partition.

/*
 Time:
 k is the length of longest digit
 Best: O(nk)
 Average: O(nk)
 Worst: O(nk)
 Space: O(n+k)
*/

func radixSort(_ nums: inout [Int]) {
    var done = false
    var digit = 1
    
    while !done {  //While our sorting is not completed
        done = true  //Assume it is done for now
        
        var buckets: [[Int]] = Array(repeating: [], count: 10)
        var index: Int = 0
        
        for number in nums {
            index = (number / digit) % 10
            buckets[index].append(number)
            if done && index > 0 {  //If we arent done, continue to finish, otherwise we are done
                done = false
            }
        }
        
        // Getting numbers from buckets
        var i = 0
        for j in 0..<10 {
            let bucket = buckets[j]
            for number in bucket {
                nums[i] = number
                i += 1
            }
        }
        
        digit *= 10  //Move to the next digit
    }
}
