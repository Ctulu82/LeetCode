
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count != 0 else {
            return nil
        }

        let root = TreeNode(nums[nums.count/2])
        root.left = sortedArrayToBST(Array(nums[0..<nums.count/2]))
        root.right = sortedArrayToBST(Array(nums[nums.count/2 + 1..<nums.count]))

        return root
    }
}

/*
 오름차순으로 정렬되어 있는 int 배열이 주어지면 높이가 1 이상 차이나지 않는 BST 를 만드는 문제입니다.
 
 Solution
 이분탐색 하듯이 트리를 순회하면 됩니다.
 배열이 오름차순으로 되어 있기 때문에 중앙에 있는 값이 무조건 root 가 되야 합니다.
 부모 노드 nums[mid] 를 만들고 나면 왼쪽 서브트리는 0 ~ mid - 1 로 만든 트리고 오른쪽 서브트리는 mid + 1 ~ nums.length - 1 로 만든 트리입니다.
 
 Input: nums = [-10,-3,0,5,9]
 Output: [0,-3,9,-10,null,5]
 Explanation: [0,-10,5,null,-3,null,9] is also accepted:
 
 Input: nums = [1,3]
 Output: [3,1]
 Explanation: [1,3] and [3,1] are both a height-balanced BSTs.
 */
