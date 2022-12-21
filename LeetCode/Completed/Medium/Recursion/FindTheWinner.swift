//
//  FindTheWinner.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/11/22.
//

import Foundation

// MARK: - 1823. Find the Winner of the Circular Game

class FindTheWinnerSolution {
    private var step: Int!
    private var arr = [Int]()
    
    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        step = k
        for i in 1...n {
            arr.append(i)
        }
        helper(index: 0)
        return arr.first ?? 0
    }
    
    private func helper(index: Int) {
        guard arr.count > 1 else { return }
        let i = (index + step - 1) % arr.count
        arr.remove(at: i)
        helper(index: i)
    }
}
