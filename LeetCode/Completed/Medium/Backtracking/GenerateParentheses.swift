//
//  GenerateParentheses.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 22/01/24.
//

import Foundation

// MARK: - 22. Generate Parentheses

class GenerateParentheses {
    var arr: [String] = []
    func generateParenthesis(_ n: Int) -> [String] {
        var str = ""
        backtrack(open: 0, close: 0, max: n, str: &str)
        return arr
    }
    
    private func backtrack(open: Int, close: Int, max: Int, str: inout String) {
        if close == max {
            arr.append(str)
            return
        }
        
        if open < max {
            var res = str + "("
            backtrack(open: open + 1, close: close, max: max, str: &res)
        }
        
        if close < open {
            var res = str + ")"
            backtrack(open: open, close: close + 1, max: max, str: &res)
        }
    }
}

//["((()))","(()())","(())()","()(())","()()()"]
