
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
            
        guard let tree1 = p, let tree2 = q, tree1.val == tree2.val else {
            return false
        }
        
        return isSameTree(tree1.left, tree2.left) && isSameTree(tree1.right, tree2.right)
    }
}

/*
 이진트리 p, q가 주어지고, p,q가 같은지 아닌지 비교해야 합니다.
 */
