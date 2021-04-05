
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        
        var min = prices[0] // 첫번째 초기값을 셋팅(제일 작은수가 됨)
        var profit = 0      // 우리가 구하고자하는 숫자를 0으로 셋팅 (max profit값이 됨)

        for i in prices {
            if i < min {  // prices 배열을 돌면서 초기값과 비교
                min = i   // 제일 작은수를 찾는다
            } else if (i-min) > profit {
                profit = i - min
            }
        }
        return profit
    }
}

/*
 i번째 요소 = i번째 일(day)인 배열이 주어집니다.
 수익을 극대화하기 위해 하루는 주식 1주를 매수하고, 그 이후부터 하루는 매도를 하려고 합니다.
 달성 가능한 최대 수익을 리턴합니다. 어떤 수익도 달성할 수 없다면 0을 리턴합니다.
 (우선 저점에 매수한 다음 고점에 매도한 차익금을 리턴)
 
 * 배열의 길이가 적절한 수준이면 배열관련 기본 함수를 사용해도 되지만 leetcode에서는 런타임 에러가 날것 같네요.
 
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: 제일 작은 값이 오는 2번째 날의 값(1) 그 이후 제일 큰 값인 5번째 날의 값(6)이 최대 수익.
 
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: 작은 작은 수인 1이 맨 마지막에 있기때문에 그 어느것도 최대 수익을 갖지 못함.
 */
