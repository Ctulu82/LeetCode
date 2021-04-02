
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
//        guard let root = root else {
//            return 0
//        }
//
//        if root.left == nil && root.right == nil {
//            return 1
//        }
//
//        var depth: Int = Int.max
//        if root.left == nil {
//            depth = min(depth, minDepth(root.right))
//        } else if root.right == nil {
//            depth = min(depth, minDepth(root.left))
//        } else {
//            depth = min(minDepth(root.left), minDepth(root.right))
//        }
//
//        return depth + 1
        
        if root == nil {
            return 0
        }
        
        let left = minDepth(root?.left)
        let right = minDepth(root?.right)
        
        return (left > 0 && right > 0) ? (min(left, right) + 1) : (left + right + 1)

    }
}

/*
 주어진 이진트리에서 최소 깊이를 찾아 리턴합니다.
 
 Input: root = [3,9,20,null,null,15,7]
        3
       / \
      9  20
         / \
        15  7
 Output: 2
 
 Input: root = [2,null,3,null,4,null,5,null,6]
        2
         \
          3
           \
            4
             \
              5
               \
                6
 Output: 5

 */
