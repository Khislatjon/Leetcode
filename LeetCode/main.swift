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


//var root = TreeNode(4)
//root.left = TreeNode(9)
//root.right = TreeNode(0)
//root.left?.right = TreeNode(1)
//root.right?.right?.right = TreeNode(5)
//root.right?.right?.right?.right = TreeNode(6)
//root.right = TreeNode(3)
//root.left?.left = TreeNode(5)
//root.right?.left = TreeNode(15)
//root.right?.right = TreeNode(7)
//print(SumRootToLeafNumbers().sumNumbers(root))


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
