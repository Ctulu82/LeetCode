class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var index = 0
        while index < nums.count {
            if index > 0 && nums[index] == nums[index - 1] {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}

/*
 Input: nums = [1,1,2]
 Output: 2, nums = [1,2]
 
 Input: nums = [0,0,1,1,1,2,2,3,3,4]
 Output: 5, nums = [0,1,2,3,4]
 
 
 다른 빠른 방법들이 있지만 다시 봤을때 이해가 쉽지 않을 것 같아 배열을 직접 뜯어고치는 방향으로 선택하였습니다.
 문제 자체가 깔끔한 문제는 아닌 것 같습니다.
 */
