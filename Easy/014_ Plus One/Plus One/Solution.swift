class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var index = digits.count - 1
        
        while index >= 0 {
            if digits[index] < 9 {
                digits[index] += 1
                return digits
            } else {
                digits[index] = 0
                index -= 1
            }
        }
        
        digits.insert(1, at: 0)
        
        return digits
    }
}

/*
 
 
 Input: digits = [1,2,3]
 Output: [1,2,4]
 
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 
 Input: digits = [0]
 Output: [1]
 
 [9] 일 경우는 [1, 0] 이어야 합니다.
 
 [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6] 일 경우는 런타임 에러가 뜨므로 다시 수정해야 합니다.
 
 개인적인 생각으로는 기하급수를 표시해야하는 경우 필요할 것 같습니다.
 */
