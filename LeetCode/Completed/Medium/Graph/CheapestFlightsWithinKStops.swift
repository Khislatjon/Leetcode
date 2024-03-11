//
//  CheapestFlightsWithinKStops.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 25/02/24.
//

// MARK: - 787. Cheapest Flights Within K Stops
// Bellman-Ford algorithm used here

import Foundation

func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
    var prices = Array(repeating: Int.max, count: n)
    prices[src] = 0
    
    for _ in 0..<k+1 {
        var temp = prices
        for arr in flights {
            let s = arr[0], d = arr[1], p = arr[2]
            if prices[s] == Int.max {
                continue
            }
            temp[d] = min(temp[d], prices[s] + p)
        }
        
        prices = temp
    }
    
    return prices[dst] == Int.max ? -1 : prices[dst]
}
