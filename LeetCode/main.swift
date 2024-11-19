//
//  main.swift
//  LeetCode
//
//  Created by Khislatjon Valijonov on 26/07/22.
//

import Foundation

//let five = ListNode(3)
//let four = ListNode(3, five)
//let three = ListNode(2, four)
//let two = ListNode(2, three)
//let one = ListNode(1, two)
//
//var resultHead = reverseList(one)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}

//print(minTimeToType("zjpc"))
//print(addDigits(66))
//print(convertToBase7(104))
//print(canMakeArithmeticProgression([3, 1, 5, 9, 8]))
//print(isPowerOfTwo(16))

//print(hammingWeight(00000000000000000000000000000111))

//print(pivotArray([-3,4,3,2], 2))

//print(maxWidthOfVerticalArea([[3,1],[9,0],[1,0],[1,4],[5,3],[8,8]]))
//print(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13))

//print(diagonalSum([[5]]))
//var arr = [
//    [1,1,0],
//    [1,0,0],
//    [1,1,0]
//]
//setZeroes(&arr)

//print(lastStoneWeight([2,7,4,1,8,1]))

//print(checkAlmostEquivalent("abcdeef", "abaaacc"))
//print(search([4,5,6,7,0,1,2], 3))

//print(searchInsert([1, 3, 5, 6, 7, 10], 1))
//print(peakIndexInMountainArray([0, 10, 8, 7, 5, 4, 3, 1, 0]))
//print(isPerfectSquare(144))

//print(findTheDistanceValue([4,5,8], [10,9,1,8], 2))

//print(firstBadVersion(9))

//print(searchRange([5,7,7,8,8,10], 8))

//print(arrangeCoins(5))
//print(findKthPositive([1, 2, 3, 4], 2))
//print(countNegatives([[3,2],[1,0, -1]]))

//print(kWeakestRows([[1,1,0,0,0],
//                    [1,1,1,1,0],
//                    [1,0,0,0,0],
//                    [1,1,0,0,0],
//                    [1,1,1,1,1]], 3))

//print(checkIfExist([10,2,5,3]))
//print(judgeSquareSum(10))
//print(maxDistance([55,30,5,4,2], [100,20,10,10,5]))
//print(searchRotatedArray([4,5,6,7,0,1,2], 2))
//print(findMin([11,13,15,17]))
//print(calPoints(["1","C"]))
//print(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))
//print(dailyTemperatures([73,74,75,71,69,72,76,73]))
//print(scoreOfParentheses("((()()))"))

//var stack = MyStack()
//stack.push(10)
//stack.push(8)
//stack.push(5)
//print(stack.pop())
//print(stack.empty())
//print(stack.top())

//print(backspaceCompare("a##c", "#a#c"))
//print(removeOuterParentheses("(()())(())"))
//print(removeDuplicates("azxxzy"))
//print(finalPrices([8,4,6,2,3]))
//print(containsNearbyDuplicate([1,2,3,1,2,3],2))

//let tree = BinarySearchTree(root: TreeNode(30))
//tree.insert(19)
//tree.insert(45)
//tree.insert(5)
//tree.insert(22)
//tree.insert(60)
//tree.insert(20)
//tree.insert(28)
//tree.insert(50)
////inorderTraversal(tree.root)
//preorderTraversal(tree.root)

//print(isStrictlyPalindromic(4))

//[1,2,3,4,5,null,6,7,null,null,null,null,8]
//var root = TreeNode(1)
//root.left = TreeNode(2)
//root.right = TreeNode(3)
//
//root.left?.left = TreeNode(4)
//root.left?.right = TreeNode(5)
//root.right?.left = nil
//root.right?.right = TreeNode(6)
//
//root.left?.left?.left = TreeNode(7)
//root.left?.left?.right = nil
//root.left?.right?.left = nil
//root.left?.right?.right = nil
//root.right?.right?.left = nil
//root.right?.right?.right = TreeNode(8)
//
//let d = SolutionDeepestLeavesSum()
//print(d.deepestLeavesSum(root))

//print(findTheDifference("", "a"))
//
//let a = FindTheWinnerSolution()
//print("res = ", a.findTheWinner(5, 2))

//let graph = AdjacencyList<String>()
//
//let spiderMan = graph.createVertex(data: "Spider Man")
//let ironMan = graph.createVertex(data: "Iron Man")
//let captainAmerica = graph.createVertex(data: "Captain America")
//let antMan = graph.createVertex(data: "Ant Man")
//let civilWar = graph.createVertex(data: "Civil War")
//let avengers = graph.createVertex(data: "Avengers")
//let thor = graph.createVertex(data: "Thor")
//let ragnarok = graph.createVertex(data: "Ragnarok")
//let hulk = graph.createVertex(data: "Hulk")
//
//graph.add(.undirected, from: spiderMan, to: ironMan)
//graph.add(.undirected, from: spiderMan, to: civilWar)
//graph.add(.undirected, from: spiderMan, to: avengers)
//graph.add(.undirected, from: ironMan, to: avengers)
//graph.add(.undirected, from: ironMan, to: civilWar)
//graph.add(.undirected, from: captainAmerica, to: civilWar)
//graph.add(.undirected, from: captainAmerica, to: avengers)
//graph.add(.undirected, from: captainAmerica, to: antMan)
//graph.add(.undirected, from: antMan, to: civilWar)
//graph.add(.undirected, from: antMan, to: avengers)
//graph.add(.undirected, from: thor, to: avengers)
//graph.add(.undirected, from: thor, to: ragnarok)
//graph.add(.undirected, from: hulk, to: avengers)
//graph.add(.undirected, from: hulk, to: ragnarok)
//
//print(graph)
//
//print(findCenter([[1,2],[5,1],[1,3],[1,4]]))

//var root = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
//print(isSymmetric(root))

//print(interpret("G()()()()(al)"))

//print(uniquePaths(3, 7))


//let six = ListNode(6)
//let five = ListNode(5, six)
//let four = ListNode(4, five)
//let three = ListNode(3, four)
//let two = ListNode(2, three)
//let one = ListNode(1, two)
//
//var node = oddEvenList(one)
//while node != nil {
//    print("v = ", node?.val as Any)
//    node = node?.next
//}

//print(findSubstring("barfoofoobarthefoobarman", ["bar","foo","the"]))
//print(findSubstring("wordgoodgoodjonngoodbestword", ["word","jonn","best","good"]))

//let bo: Bool = search([1,3,5], 3)
//print(bo)
//let bo2: Bool = search([2,5,6,0,0,1,2], 3)
//print(bo2)

//print(findWinners([[2,3],[1,3],[5,4],[6,4]]))

//print(reverseBits(4294967293))
//print(xorOperation(4, 3))
//print(rangeBitwiseAnd(5, 7))

//print(minBitFlips(3, 4))

//print(singleNumber([0,1,0,1,0,1,99]))

//print(uniqueOccurrences([1,2,2,1,1,3]))

//print(maxDepth())
//print(minFallingPathSum([[2,1,3],[6,5,4]]))

//print(sumSubarrayMins([11, 10]))



//var root = TreeNode(1)
//root.left = TreeNode(3)
//root.right = TreeNode(2)
//root.left?.left = TreeNode(5)
//
//var root2 = TreeNode(2)
//root2.left = TreeNode(1)
//root2.right = TreeNode(3)
//root2.right?.left = TreeNode(7)
//root2.left?.right = TreeNode(4)
//
//print(MergeTrees().mergeTrees(root, root2)?.val)

//print(findErrorNums([1,1]))

//var root = TreeNode(2)
//root.left = TreeNode(3)
//root.right = TreeNode(1)
//root.left?.left = TreeNode(3)
//root.left?.right = TreeNode(1)
//root.right?.right = TreeNode(1)
//
//print(PseudoPalindromicPaths().pseudoPalindromicPaths(root))

//print(maxLength(["un","iq","ue"]))

//print(GenerateParentheses().generateParenthesis(3))

//print(longestCommonSubsequence("abcde", "abc"))

//print(findPaths(10, 10, 3, 1, 1))

//print(kInversePairs(1000, 1000))

//print(numTrees(6))

//print(decrypt([2,4,9,3], -2))

//print(findDuplicate([1,3,4,2,2]))


//var root = TreeNode(2)
//root.left = TreeNode(9)
//root.right = TreeNode(3)
//root.right?.right = TreeNode(4)
//root.right?.right?.right = TreeNode(5)
//root.right?.right?.right?.right = TreeNode(6)
//root.right = TreeNode(3)
//root.left?.left = TreeNode(3)
//root.right?.left = TreeNode(15)
//root.right?.right = TreeNode(7)
//print(Solution().minDepth(root))

//RecoverTree().recoverTree(root)

//let root = SolutionBuildTree().buildTree([3,9,20,15,7], [9,3,15,20,7])
//print(inorderTraversal(root))

//let r = ConstructBinaryTreeFromInorderPostorderTraversal().buildTree([9,3,15,20,7], [9,15,7,20,3])
//print(inorderTraversal(r))

//print(DivideArray().divideArray([1,3,4,8,7,9,3,5,1], 2))
//print(SequentialDigits().sequentialDigits(1_000_000_00, 1_000_000_000))
//print(MaxSumAfterPartitioning().maxSumAfterPartitioning([1,15,7,9,2,5,10], 3))


//var myHeap = MaxHeap()
//
//myHeap.add(2)
//myHeap.add(10)
//myHeap.add(8)
//myHeap.add(9)
//myHeap.add(7)
//myHeap.add(3)
//myHeap.add(4)
//dump(myHeap.items)
//
//print(myHeap.peek()) // Prints 2 to the console on the right in Swift Playgrounds
//print(myHeap.poll())
//dump(myHeap.items)


//print(FindKthLargest().findKthLargest([3,2,1,5,6,4], 2))

//print(nthUglyNumber(309))

//let uniqueChar = firstUniqChar("leetcodel")
//print(uniqueChar)


//var nums = [2, 5, 6, 1, 4, 3]
//selectionSort(&nums)
//print(nums)

//groupAnagrams(["eat","tea","tan","ate","nat","bat"])


//var root = TreeNode(5)
//root.left = TreeNode(4)
//root.right = TreeNode(2)
//root.left?.left = TreeNode(3)
//root.left?.right = TreeNode(5)
//root.right?.left = TreeNode(7)

//root.left?.right?.right = TreeNode(5)
//root.left?.right?.left = TreeNode(6)
//root.right = TreeNode(3)
//root.left?.left = TreeNode(5)
//root.right?.left = TreeNode(15)
//root.right?.right = TreeNode(7)
//print(SumRootToLeafNumbers().sumNumbers(root))

//print(isEvenOddTree(root))


//print(maximumGap([3,6,9,1]))

//var nums = [2, 8, 5, 3, 9, 1]
//insertionSort(&nums)
//heapSort(&nums)
//print(nums)

//var nums1 = [1,2,3,0,0,0]
//var nums2 = [2,5,6]
//merge(&nums1, 3, nums2, 3)

//print(frequencySort("ttreereree"))

//let a = [1]
//print(Array(a[0..<a.count]))
//print(sortArray([2, 5, 1]))

//print(numSquares(9))

//print(merge([[1,4],[0,1]]))

//print(largestDivisibleSubset([1, 2, 3]))

//print(PalindromicSubstrings().countSubstrings("abcc"))

//print(calculate("28-137*2"))
//var nums = [10, 7, 4, 3, 1, 56, 30]
//radixSort(&nums)
//print(nums)

//print(topKFrequent([10, 7, 4, 3, 1, 56, 5, 5, 5, 30, 4, 3, 1, 1, 1 ], 4))

//print(majorityElement([1, 3, 2, 1, 1, 1, 3]))
//print(firstPalindrome(["abc","car","ada","racecar","cool"]))

//print(rearrangeArray([3,1,-2,-5,2,-4]))

//var cache = LRUCache(2)
//print(cache.get(2))
//cache.put(2, 6)
//print(cache.cache)
//print(cache.get(1))
//cache.put(1, 5)
//print(cache.cache)
//cache.put(1, 2)
//print(cache.cache)
//print(cache.get(1))
//print(cache.get(2))

//cache.put(2, 2)
//print(cache.dict)
//print(cache.get(1))
//cache.put(3, 3)
//print(cache.dict)
//print(cache.get(2))
//cache.put(4, 4)
//print(cache.dict)
//print(cache.get(1))
//print(cache.get(3))
//print(cache.get(4))

//print(largestPerimeter([5,5,50, 80]))

//print(findLeastNumOfUniqueInts([4,3,1,1,3,3,2], 3))

//print(maxOperations([3,2,6,1,4]))
//print(lastNonEmptyString("abcdfsf"))

//print(furthestBuilding([4,2,7,6,9,14,12], 5, 1))
//print(furthestBuilding([4,12,2,7,3,18,20,3,19], 10, 2))
//print(furthestBuilding([12, 11, 8, 6, 5, 3, 2], 5, 1))

//print(MaximumNumberofOperationsWiththeSameScore().maxOperations([2,2,1,2,1]))

//print(findJudge(5, [[1,3],[1,4],[3,4],[2,4],[4,3],[5,4]]))

//print(allPathsSourceTarget([[1,2],[3],[3],[]]))

//print(FindPathExists().validPath(6, [[0,1],[0,2],[3,5],[5,4],[4,3]], 0, 5))

//print(findCheapestPrice(4, [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], 0, 3, 1))
//print(findAllPeople(12, [[10,8,6],[9,5,11],[0,5,18],[4,5,13],[11,6,17],[0,11,10],[10,11,7],[5,8,3],[7,6,16],[3,6,10],[3,11,1],[8,3,2],[5,0,7],[3,8,20],[11,0,20],[8,3,4],[1,9,4],[10,7,11],[8,10,18]], 9))

//print(GreatestCommonDivisorTraversal().canTraverseAllPairs([2,3,6]))

//var arr = [1,1,1,2,2,2,3]
//print(removeDuplicates(&arr))
//print(arr)

//print(trailingZeroes(50))

//print(DiameterBinaryTree().diameterOfBinaryTree(root))

//print(FindBottomLeftTreeValue().findBottomLeftValue(root))

//var grid: [[Character]] = [["1","0","0","1","1","1","0","1","1","0","0","0","0","0","0","0","0","0","0","0"],["1","0","0","1","1","0","0","1","0","0","0","1","0","1","0","1","0","0","1","0"],["0","0","0","1","1","1","1","0","1","0","1","1","0","0","0","0","1","0","1","0"],["0","0","0","1","1","0","0","1","0","0","0","1","1","1","0","0","1","0","0","1"],["0","0","0","0","0","0","0","1","1","1","0","0","0","0","0","0","0","0","0","0"],["1","0","0","0","0","1","0","1","0","1","1","0","0","0","0","0","0","1","0","1"],["0","0","0","1","0","0","0","1","0","1","0","1","0","1","0","1","0","1","0","1"],["0","0","0","1","0","1","0","0","1","1","0","1","0","1","1","0","1","1","1","0"],["0","0","0","0","1","0","0","1","1","0","0","0","0","1","0","0","0","1","0","1"],["0","0","1","0","0","1","0","0","0","0","0","1","0","0","1","0","0","0","1","0"],["1","0","0","1","0","0","0","0","0","0","0","1","0","0","1","0","1","0","1","0"],["0","1","0","0","0","1","0","1","0","1","1","0","1","1","1","0","1","1","0","0"],["1","1","0","1","0","0","0","0","1","0","0","0","0","0","0","1","0","0","0","1"],["0","1","0","0","1","1","1","0","0","0","1","1","1","1","1","0","1","0","0","0"],["0","0","1","1","1","0","0","0","1","1","0","0","0","1","0","1","0","0","0","0"],["1","0","0","1","0","1","0","0","0","0","1","0","0","0","1","0","1","0","1","1"],["1","0","1","0","0","0","0","0","0","1","0","0","0","1","0","1","0","0","0","0"],["0","1","1","0","0","0","1","1","1","0","1","0","1","0","1","1","1","1","0","0"],["0","1","0","0","0","0","1","1","0","0","1","0","1","0","0","1","0","0","1","1"],["0","0","0","0","0","0","1","1","1","1","0","1","0","0","0","1","1","0","0","0"]]
//print(numIslands(grid))

//var board: [[Character]] = [
//    ["X","X","O","X"],
//    ["X","O","X","X"],
//    ["X","X","O","X"],
//    ["X","O","X","X"]
//]
//
//var board1: [[Character]] = [
//
//    ["O","O","O"],
//    ["O","O","O"],
//    ["O","O","O"]
//]
//
//solve(&board1)
//for row in board1 {
//    print(row)
//}


//print(CombinationSum().combinationSum([2,3,4,5], 9))
//print(PalindromePartitioning().partition("aab"))

//print(Subsets().subsets([1,2,3]))

//print(equalSubstring("krrgw", "zjxss", 19))
//print(numSteps("1111110011101010110011100100101110010100101110111010111110110010"))
//print(scoreOfString("zaz"))

//print(LongestPalindrome().longestPalindrome("abccccdd"))
//print(commonChars(["bella","label","roller"]))

//print(replaceWords(["cattle", "cat","bat","rat"], "the cattle was rattled by the battery"))

//print(checkSubarraySum([23,2,6,4,7], 10))
//print(minIncrementForUnique([3,2,1,2,1,7]))

//let a = GetAncestors().getAncestors(6, [[5,1],[2,3],[5,3],[0,2],[3,1],[5,2],[4,0]])
//print(a)

//print(threeConsecutiveOdds([1,2,34,3,4,5,7,23,12]))

//print(intersect([1,2,2,1], [2,2,5]))

//print(minDifference([5, 6, 10, 18, 20, 22]))

//let seven = ListNode(0)
//let six = ListNode(2, seven)
//let five = ListNode(2, six)
//let four = ListNode(0, five)
//let three = ListNode(3, four)
//let two = ListNode(0, three)
//let one = ListNode(1, two)
//let zero = ListNode(0, one)
//
//var head = mergeNodes(zero)
//
//while head != nil {
//    print(head?.val ?? -1)
//    head = head?.next
//}
//[0,1,0,3,0,2,2,0]

//print(passThePillow(3, 1))

//print(averageWaitingTime([[5,2],[5,4],[10,3],[20,1]]))
//print(minOperations(["d1/","../","../","../"]))

//print(luckyNumbers([[1,10,4,2],[9,3,8,7],[15,16,17,12]]))

//print(sortPeople(["Mary","John","Emma"], [180,165,170]))

//print(frequencySort([-1,1,-6,4,5,-6,1,4,1]))

//let c = sortJumbled([8,9,4,0,2,1,3,5,7,6], [991,338,38])
//print(c)

//print(minimumDeletions("aababbab"))

//print(countSeniors(["7868190130M7522","5303914400F9211","9273338290F4010"]))

//print(minSwaps([1,1,0,0,1]))

//print(canBeEqual([11,7,3, 3], [3,7,11, 7]))

//print(rangeSum([1,2,3,4], 4, 1, 5))

//let a = KthLargest(3, [4, 5, 8, 2])
//print(a.add(3))
//print(a.add(5))
//print(a.add(10))
//print(a.add(9))
//print(a.add(4))

//print(StoneGame().stoneGame([7, 3, 10, 5]))

//print(checkInclusion("ab", "eidbaoao"))
//print(minimumSteps("1010111"))

//var root = TreeNode(1)
//root.left = TreeNode(2)
//root.right = TreeNode(3)
//
//root.left?.left = TreeNode(4)
//root.left?.right = TreeNode(5)
//root.right?.left = TreeNode(5)
//root.right?.right = TreeNode(6)
//
//print(kthLargestLevelSum(root, 1))

//print(maxProfit([7,1,5,3,6,4]))

//print(isSubsequence("abc", "ahbgdc"))
//print(isCircularSentence("eetcode"))

//print(makeFancyString("trrrteeeetcode"))

//print(possibleStringCount("aabbcddd"))
//print(rotateString("abcde", "cdeab"))
//print(compressedString("a"))

//print(minChanges("100110"))
//print(FindPowerKSizeSubarrays().resultsArray([3,2,3,2,3,2], 3))
//print(kthFactor(1000, 4))
//print(hIndex([3, 0, 6, 1, 5]))

//print(subarraySum([1,2,3], 3))
//print(minSubArrayLen(4, [1,4,4]))
//print(maximumSubarraySum([1,5,4,2,9,9,9], 3))
print(decrypt([5,7,1,4], 3))
