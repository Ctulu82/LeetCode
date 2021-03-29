class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x >= 0 else {
            return 0
        }
        
        var low = 1
        var high = x
        
        while low != high {
            let mid = (low + high) / 2
            
            if mid * mid <= x && (mid + 1) * (mid + 1) > x {
                return mid
            } else if mid * mid > x {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return low
    }
}

/*
 Input: x = 4
 Output: 2
 
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.
 
 첫번째 방법은 1부터 순차적으로 곱해서 x와 비교해서 출력하는 방식이었는데 x가 엄청 큰수가 나와버리면 메모리 문제로 뻗어버리므로 다른 방법을 찾아야 했습니다.
 */
