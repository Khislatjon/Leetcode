import Cocoa

//public func solution(_ A : inout [Int]) -> Int {
//    let sorted = A.filter {$0 > 0 }.sorted()
//    if let max = sorted.max(), max > 0 {
//        for i in 1..<max {
//            if !sorted.contains(i) {
//                return i
//            }
//        }
//        return max + 1
//    }
//    return 1
//}
//
//var a = [4, 3, 6, 4, 5, 2, 0]
//let s = solution(&a)
//print(s)

//public func solution(_ message : inout String, _ K : Int) -> String {
//    var cut = String(message.prefix(K))
//    let allW = message.split(separator: " ")
//    var arr = cut.split(separator: " ")
//    for word in arr {
//        if !allW.contains(word) {
//            arr.removeLast()
//            break
//        }
//    }
//    cut = arr.joined(separator: " ")
//    return cut
//}
//
//var str = "Codility We test coders"
//let a = solution(&str, 100)
//print(a)


//public func solution(_ P : inout [Int], _ S : inout [Int]) -> Int {
//    var freeSeat = S.reduce(0, +) - P.reduce(0, +)
//    var carParked = 0
//    for p in P {
//        if freeSeat >= p {
//            freeSeat -= p
//            carParked += 1
//        }
//    }
//    return S.count - carParked
//}
//
//var p = [2, 3, 4, 2]
//var s = [2, 5, 7, 2]
//let a = solution(&p, &s)
//print(a)


//public func solution(_ A : inout [Int]) -> Int {
//    let total = Double(A.reduce(0, +))
//    var cur = total
//    var filterCount = 0
//    var sorted = A.sorted {$0 > $1}.map{Double($0)}
//
//    var i = 0
//    while i < sorted.count {
//        cur -= sorted[i] / 2.0
//        filterCount += 1
//        if cur <= total / 2.0 {
//            return filterCount
//        }
//
//        if sorted[i] > 2*sorted[i+1] {
//            sorted[i] = sorted[i] / 2.0
//        } else {
//            i += 1
//        }
//    }
//    return filterCount
//}
//
//var f = [0, 0, 9]
//let s = solution(&f)
//print(s)

// MARK: - 1. Two Sum

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var numToIndex: [Int: Int] = [:]
//    for index in nums.indices {
//        let num = nums[index]
//        let needle = target - num
//        if let previousIndex = numToIndex[needle], previousIndex != index {
//            return [previousIndex, index]
//        }
//        numToIndex[num] = index
//    }
//    return []
//}
//print(twoSum([3,2,4], 6))


// MARK: - 3. Longest Substring Without Repeating Characters

//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var charToLastIndex: [Character: Int] = [:]
//    var answer = 0
//
//    for (index, char) in s.enumerated() {
//        if let lastIndexOfDuplicate = charToLastIndex[char] {
//            charToLastIndex = charToLastIndex.filter { $1 > lastIndexOfDuplicate }
//        }
//        charToLastIndex[char] = index
//        answer = max(answer, charToLastIndex.count)
//    }
//
//    return answer
//}
//
//print(lengthOfLongestSubstring("abaakelf"))
//print(lengthOfLongestSubstring("wwke"))
//print(lengthOfLongestSubstring("abccade"))
//print(lengthOfLongestSubstring("bcadef"))
//print(lengthOfLongestSubstring("dvdf"))
//print(lengthOfLongestSubstring("abcadef"))


// MARK: - 4. Median of Two Sorted Arrays

//func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//    let resultArr = (nums1 + nums2).sorted()
//    if resultArr.count % 2 == 0 {
//        return Double(resultArr[resultArr.count / 2 - 1] + resultArr[resultArr.count / 2]) / 2.0
//    } else {
//        return Double(resultArr[resultArr.count / 2])
//    }
//}
//
//let a = findMedianSortedArrays([4, 3], [5])
//print(a)


// MARK: - 6. Zigzag Conversion

//func convert(_ s: String, _ numRows: Int) -> String {
//    guard s.count > 1, numRows > 1 else { return s }
//    var dict = [Int: String]()
//    let treshold = (numRows-1)*2
//    for (index, char) in s.enumerated() {
//        let location = index % treshold
//        if location < numRows {
//            dict[location] = (dict[location] ?? "") + String(char)
//        } else {
//            let upLocation = location - numRows
//            dict[numRows-upLocation-2] = (dict[numRows-upLocation-2] ?? "") + String(char)
//        }
//    }
//
//    var str = ""
//    for key in dict.keys.sorted() {
//        str += dict[key]!
//    }
//    return str
//}
//
////P   A   H   N
////A P L S I I G
////Y   I   R
//print(convert("PAYPALISHIRING", 3))


// MARK: - 7. Reverse Integer

//func reverse(_ x: Int) -> Int {
//    var unsignedX = abs(x)
//    var reverse = 0
//    while unsignedX > 0 {
//        let lastDigit = unsignedX % 10
//        unsignedX /= 10
//        reverse = reverse * 10 + lastDigit
//        if reverse > Int32.max {
//            return 0
//        }
//    }
//    if x < 0 {
//        return -reverse
//    }
//    return reverse
//}
//print(reverse(-120))


// MARK: - 9. Palindrome Number

//func isPalindrome(_ x: Int) -> Bool {
//    guard x >= 0 else { return false }
//    var rev = 0
//    var n = x
//
//    while n > 0 {
//        rev = rev * 10 + (n % 10)
//        n /= 10
//    }
//    return rev == x
//}
//print(isPalindrome(10123))


// MARK: - 11. Container With Most Water

//func maxArea(_ height: [Int]) -> Int {
//    var left = 0
//    var right = height.count-1
//    var maxArea = 0
//
//    while left < right {
//        let minHeight = min(height[left], height[right])
//        maxArea = max(maxArea, minHeight * (right - left))
//        if height[left] < height[right] {
//            left += 1
//        } else {
//            right -= 1
//        }
//    }
//
//    return maxArea
//}
//
//print(maxArea([1, 8, 1]))


// MARK: - 12. Integer to Roman

//func intToRoman(_ num: Int) -> String {
//    let M = ["", "M", "MM", "MMM"]
//    let C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
//    let X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
//    let I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
//    return M[num/1000] + C[(num/100) % 10] + X[(num/10) % 10] + I[num%10]
//}
//let a = intToRoman(1687)
//print(a)


// MARK: - 13. Roman to Integer

//func romanToInt(_ s: String) -> Int {
//    let dict: [String.Element: Int] = [
//        "I": 1,
//        "V": 5,
//        "X": 10,
//        "L": 50,
//        "C": 100,
//        "D": 500,
//        "M": 1000
//    ]
//    var prevValue = 0
//    var result = 0
//
//    for char in s {
//        let value = dict[char] ?? 0
//        result += value > prevValue ? value - 2*prevValue : value
//        prevValue = value
//    }
//    return result
//}
//
//let roman = romanToInt("MCXIII")
//print(roman)


// MARK: - 14. Longest Common Prefix

//func longestCommonPrefix(_ strs: [String]) -> String {
//    guard strs.count > 0 else { return "" }
//    var minStr = (strs.min{$0.count < $1.count})!
//
//    for str in strs {
//        while !str.hasPrefix(minStr) {
//            minStr.removeLast()
//        }
//    }
//    return minStr
//}
//
//let prefix = longestCommonPrefix(["ab", "absg"])
//print(prefix)


// MARK: - 15. 3Sum

//func threeSum(_ nums: [Int]) -> [[Int]] {
//    if nums.count < 3 {
//        return []
//    }
//
//    var result = Set<[Int]>()
//    let sorted = nums.sorted()
//
//    for i in 0..<sorted.count {
//        var j = i + 1
//        var k = sorted.count - 1
//
//        while j < k {
//            let sum = sorted[i] + sorted[j] + sorted[k]
//            if sum == 0 {
//                result.insert([sorted[i], sorted[j], sorted[k]])
//                j += 1
//            } else if sum < 0 {
//                j += 1
//            } else if sum > 0 {
//                k -= 1
//            }
//        }
//    }
//    return Array(result)
//}
//
//let res = threeSum([-1,0,1,2,-1,-4])
//print(res)


// MARK: - 16. 3Sum Closest

//func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
//    if nums.count < 3 {
//        return 0
//    }
//
//    let sorted = nums.sorted()
//    var closestSum = sorted[0] + sorted[1] + sorted[2]
//    var minDiff = 1000
//
//    for i in 0..<sorted.count-2 {
//        var j = i + 1
//        var k = sorted.count - 1
//
//        while j < k {
//            let sum = sorted[i] + sorted[j] + sorted[k]
//            if sum == target {
//                return sum
//            } else if sum < target {
//                if target - sum < minDiff {
//                    minDiff = target - sum
//                    closestSum = sum
//                }
//                j += 1
//            } else if sum > target {
//                if sum - target < minDiff {
//                    minDiff = sum - target
//                    closestSum = sum
//                }
//                k -= 1
//            }
//        }
//    }
//    return closestSum
//}
//
//let clsum = threeSumClosest([-1,2,1,-4], 1)
//print(clsum)


// MARK: - 17. Letter Combinations of a Phone Number

//func letterCombinations(_ digits: String) -> [String] {
//    guard !digits.isEmpty else { return [] }
//    let map: [Character: String] = [
//        "2": "abc",
//        "3": "def",
//        "4": "ghi",
//        "5": "jkl",
//        "6": "mno",
//        "7": "pqrs",
//        "8": "tuv",
//        "9": "wxyz",
//    ]
//
//    // Get all values from input
//    var stringArr = [String]()
//    for d in digits {
//        if let value = map[d] {
//            stringArr.append(value)
//        }
//    }
//
//    // Recursive function call
//    var combinations = [String]()
//    getCombinations(0, stringArr, "", &combinations)
//    return combinations
//}
//
//func getCombinations(_ index: Int, _ strings: [String], _ carry: String, _ combinations: inout [String]) {
//    if index >= strings.count {
//        combinations.append(carry)
//        return
//    }
//
//    for c in strings[index] {
//        getCombinations((index+1), strings, (carry + String(c)), &combinations)
//    }
//}
//
//let com = letterCombinations("29")
//print(com)

// MARK: - 18. 4Sum

//func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
//    if nums.count < 4 {
//        return []
//    }
//
//    let sorted = nums.sorted()
//    var resultSet = Set<[Int]>()
//
//    for a in 0..<sorted.count-3 {
//        for b in a+1..<sorted.count-2 {
//            var c = b + 1
//            var d = sorted.count - 1
//
//            while c < d {
//                let sum = sorted[a] + sorted[b] + sorted[c] + sorted[d]
//
//                if sum == target {
//                    resultSet.insert([sorted[a], sorted[b], sorted[c], sorted[d]])
//                    c += 1
//                } else if sum < target {
//                    c += 1
//                } else if sum > target {
//                    d -= 1
//                }
//            }
//        }
//    }
//    return Array(resultSet)
//}
//
//let a = fourSum([1,0,-1,0,-2,2], 0)
//print(a)


// MARK: - 20. Valid Parentheses

//func isValid(_ s: String) -> Bool {
//    let dict: [Character:Character] = ["{":"}", "[":"]", "(":")"]
//    var opened: [Character] = []
//
//    for char in s {
//        if dict.keys.contains(char) {
//            opened.append(char)
//        } else {
//            if char == dict[opened.last ?? "0"] {
//                opened.removeLast()
//            } else {
//                return false
//            }
//        }
//    }
//
//    return opened.isEmpty
//}
//
//print(isValid("[([]])"))

// MARK: - 28. Implement strStr()

//func strStr(_ haystack: String, _ needle: String) -> Int {
//    if needle.isEmpty {
//        return 0
//    }
//
//    if haystack.contains(needle) {
//        let range = haystack.range(of: needle)!
//        return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
//    } else {
//        return -1
//    }
//}
//
//print(strStr("hello", "llo"))


// MARK: - 36. Valid Sudoku

//func isValidSudoku(_ board: [[Character]]) -> Bool {
//
//    func hasDuplicate(_ board: [Character]) -> Bool {
//        let sorted = board.sorted()
//        for i in 0..<sorted.count-1 {
//            if sorted[i] == sorted[i+1] && sorted[i] != "." {
//                return true
//            }
//        }
//        return false
//    }
//
//    var a3 = [Character]()
//    var b3 = [Character]()
//    var c3 = [Character]()
//
//    for i in 0..<9 {
//        // horizontal check
//        if hasDuplicate(board[i]) {
//            return false
//        }
//
//        // vertical check
//        var arr = [Character]()
//        for j in 0..<9 {
//            if board[j][i] != "." && arr.contains(board[j][i]) {
//                return false
//            } else {
//                arr.append(board[j][i])
//            }
//        }
//
//        // 3x3 cube check
//        a3.append(contentsOf: board[i][0...2])
//        b3.append(contentsOf: board[i][3...5])
//        c3.append(contentsOf: board[i][6...8])
//
//        if (i+1) % 3 == 0 {
//            if hasDuplicate(a3) || hasDuplicate(b3) || hasDuplicate(c3) {
//                return false
//            } else {
//                a3 = []
//                b3 = []
//                c3 = []
//            }
//        }
//    }
//    return true
//}
//
//let a = isValidSudoku( [["9","3",".",".","7",".",".",".","."]
//                       ,["6",".",".","1","9","5",".",".","."]
//                       ,[".","9","8",".",".",".",".","6","."]
//                       ,["8",".",".",".","6",".",".",".","3"]
//                       ,["4",".",".","8",".","3",".",".","1"]
//                       ,["7",".",".",".","2",".",".",".","6"]
//                       ,[".","6",".",".",".",".","2","8","."]
//                       ,[".",".",".","4","1","9",".",".","5"]
//                       ,[".",".",".",".","8",".",".","7","9"]])
//print(a)


// MARK: - 37. Sudoku Solver

func solveSudoku(_ board: inout [[Character]]) {
        
}


// MARK: - 48. Rotate Image

//func rotate(_ matrix: inout [[Int]]) {
//    guard !matrix.isEmpty, matrix.count == matrix[0].count else { return }
//    var l = 0
//    var r = matrix.count - 1
//
//    while l < r {
//        for i in 0..<(r-l) {
//            let top = l
//            let bottom = r
//
//            // Save top Left
//            let topLeft = matrix[top][l + i]
//
//            // Replace top Left with bottom Left
//            matrix[top][l + i] = matrix[bottom - i][l]
//
//            // Replace bottom Left with bottom Right
//            matrix[bottom - i][l] = matrix[bottom][r - i]
//
//            // Replace bottom Right with top Right
//            matrix[bottom][r - i] = matrix[top + i][r]
//
//            // Replace top Right with top Left
//            matrix[top + i][r] = topLeft
//        }
//        l += 1
//        r -= 1
//    }
//}


// MARK: - 53. Maximum Subarray

//func maxSubArray(_ nums: [Int]) -> Int {
//    var maxValue = nums[0]
//    var preMax = nums[0]
//    for i in 1..<nums.count {
//        let value = nums[i]
//        preMax = max(preMax + value, value)
//        maxValue = max(maxValue, preMax)
//    }
//    return maxValue
//}
//
//print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))


// MARK: - 58. Length of Last Word

//func lengthOfLastWord(_ s: String) -> Int {
//    let arr = s.split(separator: " ")
//    return arr.isEmpty ? 0 : arr[arr.count-1].count
//}
//print(lengthOfLastWord(" s  hello"))


// MARK: - 66. Plus One

//func plusOne(_ digits: [Int]) -> [Int] {
//    var arr = digits
//    var index = arr.count - 1
//    while arr[index] == 9 {
//        arr[index] = 0
//        if index != 0 {
//            index -= 1
//        } else {
//            arr.insert(1, at: 0)
//            return arr
//        }
//    }
//
//    arr[index] += 1
//    return arr
//}
//
//print(plusOne([7,2,8,5,4,7,0,1,1,1,7,4,9,9,9]))


// MARK: - 67. Add Binary

//func addBinary(_ a: String, _ b: String) -> String {
//    var result = ""
//    let aArray = Array(a)
//    let bArray = Array(b)
//
//    var aIndex = a.count - 1
//    var bIndex = b.count - 1
//    var carry = 0
//
//    while aIndex >= 0 || bIndex >= 0 {
//        let bitA = aIndex >= 0 ? Int(String(aArray[aIndex]), radix: 2) : 0
//        let bitB = bIndex >= 0 ? Int(String(bArray[bIndex]), radix: 2) : 0
//        var sum = bitA! + bitB! + carry
//        carry = sum / 2
//        sum %= 2
//        result.insert("\(sum)".first!, at: result.startIndex)
//        aIndex -= 1
//        bIndex -= 1
//    }
//
//    if carry != 0 {
//        result.insert("\(carry)".first!, at: result.startIndex)
//    }
//
//    return result
//}
//
//print(addBinary("11010","10011"))


// MARK: - 118. Pascal's Triangle

//func generate(_ numRows: Int) -> [[Int]] {
//    var arr = [[Int]]()
//    for i in 0..<numRows {
//        var lineArr = Array(repeating: 1, count: i+1)
//        if i > 1 {
//            var last = 0
//            for j in 0..<arr[i-1].count {
//                lineArr[j] = last + arr[i-1][j]
//                last = arr[i-1][j]
//            }
//        }
//        arr.append(lineArr)
//    }
//    return arr
//}
//
//print(generate(6))


// MARK: - 119. Pascal's Triangle II

//func getRow(_ rowIndex: Int) -> [Int] {
//    var arr = [[Int]]()
//    for i in 0...rowIndex {
//        var lineArr = Array(repeating: 1, count: i+1)
//        if i > 1 {
//            var last = 0
//            for j in 0..<arr[i-1].count {
//                lineArr[j] = last + arr[i-1][j]
//                last = arr[i-1][j]
//            }
//        }
//        arr.append(lineArr)
//    }
//    return arr[rowIndex]
//}
//
//print(getRow(3))


// MARK: - 121. Best Time to Buy and Sell Stock

//func maxProfit(_ prices: [Int]) -> Int {
//    var buy = prices[0]
//    var profit = 0
//    for price in prices {
//        let curProfit = price - buy
//        profit = max(profit, curProfit)
//        if curProfit < 0 {
//            buy = price
//        }
//    }
//    return profit
//}
//print(maxProfit([7,1,5,3,6,4]))


// MARK: - 125. Valid Palindrome

//func isPalindrome(_ s: String) -> Bool {
//    let str = s.lowercased().filter {
//        $0.isLetter || $0.isNumber
//    }
//    let arr = Array(str)
//    var i = 0
//    var j = arr.count - 1
//    while i < j {
//        if arr[i] != arr[j] {
//            return false
//        }
//        i += 1
//        j -= 1
//    }
//    return true
//}
//
//let b = isPalindrome("acdvf b, .f vd :c  a")
//print(b)


// MARK: - 136. Single Number

//func singleNumber(_ nums: [Int]) -> Int {
//    var uniques = [Int]()
//    for num in nums {
//        if uniques.contains(num) {
//            uniques.remove(at: uniques.firstIndex(of: num)!)
//        } else {
//            uniques.append(num)
//        }
//    }
//    return uniques[0]
//}
//print(singleNumber([3]))


// MARK: - 167. Two Sum II - Input Array Is Sorted

//func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//    var i = 0
//    var j = numbers.count - 1
//
//    while i < j {
//        if numbers[i] + numbers[j] > target {
//            j -= 1
//        } else if numbers[i] + numbers[j] < target {
//            i += 1
//        } else {
//            return [i+1, j+1]
//        }
//    }
//    return [i+1, j+1]
//}
//
//let a = twoSum([-1, 0], -1)
//print(a)


// MARK: - 168. Excel Sheet Column Title

//func convertToTitle(_ columnNumber: Int) -> String {
//    var s = ""
//    var c = columnNumber
//    while c != 0 {
//        s = String(UnicodeScalar((c - 1) % 26 + 65)!) + s
//        c = (c-1) / 26
//    }
//    return s
//}
//let b = convertToTitle(27)
//print(b)


// MARK: - 171. Excel Sheet Column Number

//func titleToNumber(_ columnTitle: String) -> Int {
//    var res = 0
//    var multiplier = 1
//    for ch in columnTitle.reversed() {
//        res += (Int(ch.asciiValue!) - 64) * multiplier
//        multiplier *= 26
//    }
//    return res
//}
//
//let r = titleToNumber("ZY")
//print(r)


// MARK: - 189. Rotate Array

//func rotate(_ nums: inout [Int], _ k: Int) {
//    let n = k % nums.count
//    reverse(&nums, 0, nums.count - 1)
//    reverse(&nums, 0, n - 1)
//    reverse(&nums, n, nums.count - 1)
//    print(nums)
//}
//func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
//    var l = start
//    var r = end
//    while (l < r) {
//        let temp = nums[l]
//        nums[l] = nums[r]
//        nums[r] = temp
//        l += 1
//        r -= 1
//    }
//}
//var arr = [1,2,3,4,5,6,7]
//rotate(&arr, 3)


// MARK: - 198. House Robber

//func rob(_ nums: [Int]) -> Int {
//    var prev = 0, current = 0
//
//    for num in nums {
//        let temp = prev
//        prev = current
//        current = max(num + temp, prev)
//    }
//    return current
//}
//print(rob([2, 1, 3, 10]))


// MARK: - 202. Happy Number

//func sumSquaredDigits(_ n: Int) -> Int {
//    var number = n
//    var sum = 0
//    var digit: Int
//
//    while number != 0 {
//        digit = number % 10
//        sum += digit * digit
//        number /= 10
//    }
//    return sum
//}
//
//func isHappy(_ n: Int) -> Bool {
//    var slow = n
//    var fast = n
//
//    repeat {
//        slow = sumSquaredDigits(slow)
//        fast = sumSquaredDigits(sumSquaredDigits(fast))
//
//        if fast == 1 { return true }
//
//    } while slow != fast
//
//    return false
//}


// MARK: - 205. Isomorphic Strings

//func isIsomorphic(_ s: String, _ t: String) -> Bool {
//    guard s.count == t.count else { return false }
//
//    let s = Array(s)
//    let t = Array(t)
//    var source = [Character: Character]()
//    var target = [Character: Character]()
//
//    for (i, char) in s.enumerated() {
//        let t = t[i]
//        if source[char] == nil && target[t] == nil {
//            source[char] = t
//            target[t] = char
//        } else if source[char] != t || target[t] != char {
//            return false
//        }
//    }
//    return true
//}
//
//let iso = isIsomorphic("paper", "title")
//print(iso)


// MARK: - 217. Contains Duplicate

//func containsDuplicate(_ nums: [Int]) -> Bool {
//    guard !nums.isEmpty else { return false }
//    var dict = [Int: Int]()
//
//    for num in nums {
//        if dict[num] == nil {
//            dict[num] = num
//        } else {
//            return true
//        }
//    }
//    return false
//}
//print(containsDuplicate([1, 2, 2, 4, 5]))


// MARK: - 242. Valid Anagram

//func isAnagram(_ s: String, _ t: String) -> Bool {
//    var sDic = [Character: Int]()
//    var tDic = [Character: Int]()
//
//    for sChar in s {
//        if sDic[sChar] == nil {
//            sDic[sChar] = 1
//        } else {
//            sDic[sChar]! += 1
//        }
//    }
//    for tChar in t {
//        if tDic[tChar] == nil {
//            tDic[tChar] = 1
//        } else {
//            tDic[tChar]! += 1
//        }
//    }
//    return sDic == tDic
//}
//let isAnag = isAnagram("aa", "a")
//print(isAnag)


// MARK: - 268. Missing Number

//func missingNumber(_ nums: [Int]) -> Int {
//    // space - O(1), time - O(n)
//    let sum = nums.reduce(0, +)
//    let all = nums.count * (nums.count + 1) / 2
//    return all - sum
//}
//
//let missingN = missingNumber([3, 2, 0])
//print(missingN)


// MARK: - 290. Word Pattern

//func wordPattern(_ pattern: String, _ s: String) -> Bool {
//    let words = s.split(separator: " ")
//    guard words.count == pattern.count else { return false }
//
//    var source = [Character: Substring]()
//    var target = [Substring: Character]()
//
//    for (i, char) in pattern.enumerated() {
//        let word = words[i]
//        if source[char] == nil && target[word] == nil {
//            source[char] = word
//            target[word] = char
//        } else if source[char] != word || target[word] != char {
//            return false
//        }
//    }
//    return true
//}
//
//let wordP = wordPattern("abba", "dog dog dog dog")
//print(wordP)


// MARK: - 344. Reverse String

//func reverseString(_ s: inout [Character]) {
//    var i = 0
//    var j = s.count-1
//
//    while i < j {
//        let char = s[i]
//        s[i] = s[j]
//        s[j] = char
//        i += 1
//        j -= 1
//    }
//    print(s)
//}
//var arr: [Character] = ["H", "d"]
//reverseString(&arr)


// MARK: - 345. Reverse Vowels of a String

//func reverseVowels(_ s: String) -> String {
//    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
//    var res = Array(s)
//    var i = 0
//    var j = s.count - 1
//
//    while i < j {
//        if vowels.contains(res[i]) && vowels.contains(res[j]) {
//            let char = res[i]
//            res[i] = res[j]
//            res[j] = char
//            i += 1
//            j -= 1
//        } else if vowels.contains(res[i]) {
//            j -= 1
//        } else if vowels.contains(res[j]) {
//            i += 1
//        } else {
//            i += 1
//            j -= 1
//        }
//    }
//    return String(res)
//}
//
//let reverseV = reverseVowels("leotcede")
//print(reverseV)


// MARK: - 349. Intersection of Two Arrays

//func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    let set1 = Set(nums1)
//    let set2 = Set(nums2)
//    return Array(set1.intersection(set2))
//}
//
//let intersec = intersection([1,2,2,1], [2, 2])
//print(intersec)


// MARK: - 350. Intersection of Two Arrays II

//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    var result = [Int]()
//    var nums = nums2
//
//    for el in nums1 {
//        if nums.contains(el) {
//            result.append(el)
//            nums.remove(at: nums.firstIndex(of: el)!)
//        }
//    }
//    return result
//}
//
//let i = intersect([1,2], [1, 1])
//print(i)


// MARK: - 383. Ransom Note

//func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//    var source = magazine
//    var word = ""
//
//    for char in ransomNote {
//        if source.contains(char) {
//            word.append(char)
//            source.remove(at: source.firstIndex(of: char)!)
//        }
//    }
//    return word == ransomNote
//}
//
//let canConstr = canConstruct("aa", "aba")
//print(canConstr)


// MARK: - 387. First Unique Character in a String

//func firstUniqChar(_ s: String) -> Int {
//    var dict = [Character: Int]()
//    for char in s {
//        dict[char] = dict[char] != nil ? dict[char]! + 1 : 1
//    }
//
//    for (i, char) in s.enumerated() {
//        if dict[char] == 1 {
//            return i
//        }
//    }
//    return -1
//}
//
//let uniqueChar = firstUniqChar("leetcodel")
//print(uniqueChar)


// MARK: - 771. Jewels and Stones

//func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
//    var count = 0
//    for stone in stones {
//        if jewels.contains(stone) {
//            count += 1
//        }
//    }
//    return count
//}


// MARK: - 1768. Merge Strings Alternately

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    let arr1 = Array(word1)
    let arr2 = Array(word2)
    
    var i = 0
    while i < arr1.count {
        result.append(arr1[i])
        if i < arr2.count {
            result.append(arr2[i])
        }
        i += 1
    }
    
    // In case arr2 longer than arr1
    while i < arr2.count {
        result.append(arr2[i])
        i += 1
    }
    return result
}
print(mergeAlternately("abc", "pqruvg"))


// MARK: - 2186. Minimum Number of Steps to Make Two Strings Anagram II

//func minSteps(_ s: String, _ t: String) -> Int {
//    var counter = [Character: Int]()
//
//    for char in s {
//        counter[char, default: 0] += 1
//    }
//    for char in t {
//        counter[char, default: 0] -= 1
//    }
//
//    var res = 0
//    for difference in counter.values {
//        res += abs(difference)
//    }
//    return res
//}
//
//let minStep = minSteps("leetcode", "coats")
//print(minStep)


// MARK: - 2190. Most Frequent Number Following Key In an Array

//func mostFrequent(_ nums: [Int], _ key: Int) -> Int {
//    var dict = [Int: Int]()
//    for i in 0...nums.count - 2 {
//        if nums[i] == key {
//            if dict[nums[i+1]] == nil {
//                dict[nums[i+1]] = 1
//            } else {
//                dict[nums[i+1]]! += 1
//            }
//        }
//    }
//
//    for (k, v) in dict {
//        if v == dict.values.max() {
//            return k
//        }
//    }
//    return 0
//}
//
//let ab = mostFrequent([2,2,2,2,3], 2)
//print(ab)


// MARK: - 2191. Sort the Jumbled Numbers

//func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
//    var obj = [Obj]()
//    for el in nums {
//        var element = el
//        var multipler = 1
//        var sum = 0
//        while element > 9 {
//            sum += mapping[element % 10] * multipler
//            element /= 10
//            multipler *= 10
//        }
//        sum += mapping[element % 10] * multipler
//        let a = Obj(el: el, sum: sum)
//        obj.append(a)
//    }
//
//    var arr = [Int]()
//    for ob in obj.sorted(by: { $0.sum < $1.sum }) {
//        arr.append(ob.el)
//    }
//    return arr
//}
//
//let c = sortJumbled([8,9,4,0,2,1,3,5,7,6], [991,338,38])
//print(c)
//
//struct Obj {
//    let el: Int
//    let sum: Int
//}


// MARK: - 2192. All Ancestors of a Node in a Directed Acyclic Graph

func getAncestors(_ n: Int, _ edges: [[Int]]) -> [[Int]] {
    var arr = Array(repeating: [Int](), count: n)
    for i in 0..<n {
        for minArr in edges {
            if minArr[1] == i {
                arr[i].append(minArr[0])
            }
        }
        for j in arr[i] {
            arr[i].append(contentsOf: arr[j])
            arr[i] = Array(Set(arr[i])).sorted()
        }
    }
    return arr
}

let v = getAncestors(5, [[0,1],[0,2],[0,3],[0,4],[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]])
print(v)
