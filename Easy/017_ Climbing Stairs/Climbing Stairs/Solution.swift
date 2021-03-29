class Solution {
    func climbStairs(_ n: Int) -> Int {
        var numOfWays = [0,1,2]
        
        if n < 3 {
            return numOfWays[n]
        }
        
        for i in 3...n {
            numOfWays.append(numOfWays[i - 1] + numOfWays[i - 2])
        }
        
        return numOfWays[n]
    }
}

/*
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 
 Constraints:
 1 <= n <= 45

 Dynamic Programming 로 풀어야 합니다.
 f[i] = f[i -1] + f[i - 2]
 f[0,1,2] = [0,1,2]
 현재 위치 = ( 현재위치 - 1 ) +  ( 현재위치 - 2 )
 */
