
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSymmetricTree(root?.left, root?.right)
    }
    
    func isSymmetricTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if let p = p, let q = q {
            return p.val == q.val && isSymmetricTree(p.left, q.right) && isSymmetricTree(p.right, q.left)
        } else {
            return p == nil && q == nil
        }
    }
}

/*
 이진트리 root 가 주어지고 root의 하위 트리들이 대칭인지 비교해야 합니다.
 */
