
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in m ..< nums1.count {
            nums1[i] = nums2[i-m]
        }
        nums1.sort()
//        print(nums1.sort())
    }
}


/*
 주어진 두개의 정렬된 정수 배열 nums1, nums2가 있습니다.
 nums2 를 nums1으로 병합하여 하나의 정렬된 배열로 만들어야 합니다.
 최종 배열의 길이는 m+n 이어야 합니다.
 
 메모리를 적게 사용하는 방법도 있지만 Swift의 기본함수를 최대한 활용하고, 최대한 readable하게 코딩하는 것이 주 목적이므로 위와같이 작성하였습니다.
 
 문제 설계가 조금 이상한듯.. n을 사용하지 않아도 됨.
 */
