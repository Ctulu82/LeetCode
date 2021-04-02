
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else {
            return false
        }
        
        if targetSum == root.val && root.left == nil && root.right == nil {
            return true
        }
        
        return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
    }
}

/*
 이진트리 root 와 정수인 targetSum 이 주어지면 상위에서 최하위 노드까지 합한 값이 targetSum이 나오는지 판단하여 리턴합니다.
 
 Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
        5
      /   \
     4     8
    /     / \
   11    13  4
  /  \        \
 7    2        1
 Output: true
 
 Input: root = [1,2,3], targetSum = 5
        1
       / \
      2   3
 Output: false
 
 Input: root = [1,2], targetSum = 0
 Output: false

 */
