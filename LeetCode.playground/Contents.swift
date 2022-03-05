import Cocoa

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


// MARK: - 5. Longest Palindromic Substring

func longestPalindrome(_ s: String) -> String {
    
    return ""
}


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


// MARK: - 11. Container With Most Water

//func maxArea(_ height: [Int]) -> Int {
//    var left = 0
//    var right = height.count-1
//    var maxArea = 0
//
//    while left < right {
//        maxArea = max(maxArea, min(height[left], height[right])*(right-left))
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

func intToRoman(_ num: Int) -> String {
    var resultStr = ""
    let dict = [1: "I", 5: "V", 10: "X", 50: "L",
                100: "C", 500: "D", 1000: "M"]
    
    var arr = [Int]()
    var givenN = num
    var counter = 1
    
    while givenN != 0 {
        arr.insert((givenN % 10) * counter, at: 0)
        givenN /= 10
        counter *= 10
    }
    
    print(arr)
    return ""
}

let a = intToRoman(2751)


// MARK: - 14. Longest Common Prefix

//func longestCommonPrefix(_ strs: [String]) -> String {
//    if strs.contains("") {
//        return ""
//    }
//
//    let minLengthWord = strs.min {$0.count <= $1.count}!
//    for i in 1...minLengthWord.count {
//        let prefixs = strs.map {$0.prefix(i)}
//        if !prefixs.allSatisfy({$0 == minLengthWord.prefix(i)}) {
//            return String(minLengthWord.prefix(i-1))
//        }
//    }
//    return minLengthWord
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


// MARK: - 35. Search Insert Position

//func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//    if nums.contains(target) {
//        return nums.firstIndex(of: target)!
//    }
//    return nums.firstIndex(where: {$0 > target}) ?? nums.count
//}
//
//print(searchInsert([1,3,5,6], -2))


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


// MARK: - 198. House Robber

func rob(_ nums: [Int]) -> Int {
    var even: [Int] = []
    var odd: [Int] = []
    for i in 0..<nums.count {
        if i % 2 == 0 {
            even.append(nums[i])
        } else {
            odd.append(nums[i])
        }
    }
    return max(even.reduce(0, +), odd.reduce(0, +))
}

print(rob([2]))


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
