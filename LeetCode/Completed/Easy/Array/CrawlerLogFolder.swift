//
//  CrawlerLogFolder.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 10/07/24.
//

import Foundation

// MARK: - 1598. Crawler Log Folder

func minOperations(_ logs: [String]) -> Int {
    var result = 0
    for log in logs {
        if log == "../" {
            result = max(0, result - 1)
        } else if log == "./" {
            continue
        } else {
            result += 1
        }
    }
    return result
}
