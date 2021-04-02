
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        func findDepth(_ root: TreeNode?) -> Int{
            if root == nil {
                return 0
            }
            
            return max(findDepth(root!.left), findDepth(root!.right)) + 1
        }
        
        if root == nil {
            return true
        }
        
        let left = findDepth(root!.left)
        let right = findDepth(root!.right)
        
        return abs(left - right) <= 1 && isBalanced(root!.left) && isBalanced(root!.right)
    }
}

/*
 주어진 이진트리가 균일한 깊이를 가졌는지 판단하여 리턴합니다.
 
 Input:
        5
       / \
      3   4
     / \   \
    2   6   1
 Output: True

 Input:
        5
       / \
      3   4
     / \   \
    2   6   1
           /
          7
 Output: False

 https://windsuzu.github.io/leetcode-110/
 */
