
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        if l1!.val < l2!.val {
            l1!.next = mergeTwoLists(l1!.next, l2)
            return l1
        } else {
            l2!.next = mergeTwoLists(l2!.next, l1)
            return l2
        }
    }
}

/*
 ListNode는 따로 정의가 되어 있음.
 재귀함수(recursion)로 풀어야하는 것이 국룰인듯.
 Xcode로 run하는 방법까지는 못찾고 웹상에서 해답 내는 것이 전부였음.
 실제로 출제될지는 미지수..
 https://windsuzu.github.io/leetcode-21/
 https://hururuek-chapchap.tistory.com/40
 */
