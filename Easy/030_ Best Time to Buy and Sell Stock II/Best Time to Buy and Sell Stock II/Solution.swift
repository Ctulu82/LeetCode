class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        
        for i in 0 ..< prices.count-1 {
            // i+1날 가격과 i날 가격 차이가 이익
            let semiProfit = prices[i+1] - prices[i]
            
            //이익이 0보다 크면
            if semiProfit > 0 {
                //최종이익은 중간이익을 계속 더한값이다.
                profit += semiProfit
            }
        }
        
        return profit
    }
}

/*
 i번째 요소 = i번째 일(day)인 배열이 주어집니다.
 달성 가능한 최대 수익을 리턴합니다. 가능한 많이 거래를 완성해야 할 수 있습니다.
 (매수/매도 거래쌍을 최대한 발생.) 단, 매수나 매도를 지속적으로 반복할 수는 없습니다.
 
 1. prices 배열 값 조회를 위해 반복 루프 돈다.
 2. 전날 사서 오늘 파는 값을 semiProfit에 할당한다.
 3. semiProfit이 0보다 크면 이익이므로
 4. profit에 semiProfit만큼 계속 더해간다.
 
 Input: prices = [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 
 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later,
 as you are engaging multiple transactions at the same time. You must sell before buying again.
 
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e., max profit = 0.
 */
