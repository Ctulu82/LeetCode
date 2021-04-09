
class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil {
            return false
        }
        
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            // 한번에 하나의 노드씩 움직입니다.
            slow = slow?.next
            // 한번에 두개의 노드씩 움직입니다.
            fast = fast?.next?.next
            
            // 만약 두 개의 포인터가 서로 만났다면 cycle 입니다.
            if slow === fast {
                return true
            }
        }
        
        // 여기까지 왔다면 fast 포인터가 null을 만났다는 의미이므로 false를 리턴합니다.
        return false
    }
}

/*
 Single Linked List 에서 Cycle 이 존재하는지 판단하고 리턴하세요. (LINKED LIST에서 순환 구조 찾기)
 Floyd's algorithm(일명 토끼와 거북이 알고리듬)
 - 거북이 포인터가 한 단계 진행할 때 토끼 포인터는 두 단계 진행합니다.
 - 거북이와 토끼 포인터가 만나면 사이클이 있음(true)를 반환하고, 정점의 수만큼 단계를 거듭해도 둘이 만나지 못했다면 사이클이 없음(false)를 반환합니다.
 * 토끼와 거북이가 만나는 점이 특별한 의미를 가지지는 않습니다. 사이클이 존재하는 경우 언제 어떤 점일지는 몰라도 만나기는 한다는 사실만을 얻게 됩니다.
 */
