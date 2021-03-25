class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        if target == 0 {
            return 0
        }
        
        var lowest = 0
        var highest = nums.count - 1
        
        while lowest <= highest {
            let mid = (lowest + highest) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                highest = mid - 1
            } else {
                lowest = mid + 1
            }
        }
        return lowest
    }
}

/*
 요구사항
 차순으로 정렬된 정수배열 nums와 target 값이 주어지면, nums 내의 target 값의 인덱스를 리턴합니다.
 nums 내에 target 값이 존재하지 않으면 insert하기에 알맞은 인덱스를 리턴합니다.
 
 Input: nums = [1,3,5,6], target = 5
 Output: 2

 Input: nums = [1,3,5,6], target = 2
 Output: 1

 Input: nums = [1,3,5,6], target = 7
 Output: 4

 Input: nums = [1,3,5,6], target = 0
 Output: 0

 Input: nums = [1], target = 0
 Output: 0
 
 Input: nums = [1], target = 2
 Output: 1
 
 반복문안에 검색조건을 다양하게 걸려고 했지만 인덱스 초과 이슈([1], 2)로 인덱스 가장 낮은 값, 가장 높은 값, 중간 값으로 검색하는 방법으로 선회하였습니다.
 그 방법은 이분 검색입니다.
 0_ [1,2,3,4,5,6,7,8,9], 6
 1_ 정중앙 : 숫자 5 ( (0+8) / 2 == 4번인덱스 )
 2_ 5와 탐색할 숫자인 6을 비교합니다. 5 < 6이므로 6은 5보다 오른쪽에 있다는 것을 알 수 있습니다.
 3_ 필요가 없어진 숫자는 후보에서 제외합니다. [_,_,_,_,_,6,7,8,9]
 4_ 남은 배열의 정중앙에 있는 수를 찾습니다. 여기선 숫자 7일 됩니다.
 5_ 7과 6을 비교합니다. 6<7이므로 6은 7보다 왼쪽에 있다는 것을 알 수 있습니다.
 6_ 필요가 없어진 숫자를 후보에서 제외합니다 [_,_,_,_,_,6,_,_,_,]
 7_ 남은 배열의 정중앙에 있는 수를 찾습니다. 여기선 6일 됩니다.
 8_ 6=6 으로 대상 숫자를 발견했습니다.
 */
