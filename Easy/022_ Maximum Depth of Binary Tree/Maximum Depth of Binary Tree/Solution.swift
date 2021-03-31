
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }
}

/*
 이진트리 root 가 주어지고 root의 최대 깊이값을 리턴 합니다.
 
 Tail Recursion
 일반적인 재귀 함수의 경우 최초 재귀 호출을 실행한 함수가 호출당한 함수의 결과값으로 어떤 계산을 해야하기 때문에 호출 스택이 쌓여 메모리 낭비가 발생.
 이를 방지하기 위해 최초 실행 함수가 호출당한 함수의 결과값으로 별도의 계산을 하지 않도록 해서 마지막으로 실행되는 함수에서 결과값을 반환할수 있도록 하는 것.
 */
