
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { $0 ^ $1 }
    }
}

/*
 빈값이 없는 정수 배열인 nums 가 주어지면, 하나를 제외한 모든 요소가 두번씩 나타납니다.
 런타임 복잡도를 최소화하여 그 하나를 리턴하세요.
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 
 Input: nums = [2,2,1]
 Output: 1
 
 Input: nums = [4,1,2,1,2]
 Output: 4
 
 Input: nums = [1]
 Output: 1
 
 풀이 방법
 XOR 연산으로 해결합니다.
 101 ^ 101 ^ 010 =
 000 ^ 010 =
 010

 101 ^ 010 ^ 101 =
 111 ^ 101 =
 010

 1 ^ 1 = 0 ->
 1 ^ 1 ^ 2 = 2
 */
