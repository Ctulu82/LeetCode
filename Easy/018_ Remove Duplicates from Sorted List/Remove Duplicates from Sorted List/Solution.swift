
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var currentNode: ListNode? = head
        
        while currentNode != nil && currentNode!.next != nil {
            if currentNode!.val == currentNode!.next!.val {
                currentNode!.next = currentNode!.next!.next
            } else {
                currentNode = currentNode!.next
            }
        }
        
        return head
    }
}
/*
 ListNode는 따로 정의가 되어 있음.

 Xcode로 run하는 방법까지는 못찾고 웹상에서 해답 내는 것이 전부였음.
 실제로 출제될지는 미지수..

 정렬된 단일연결리스트를 순회하면 중복(동일값) 여부를 확인하여 제거해야 합니다.
 
 Given 1->1->2, return 1->2.
 Given 1->1->2->3->3, return 1->2->3.
 */
