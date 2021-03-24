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
 
 */
