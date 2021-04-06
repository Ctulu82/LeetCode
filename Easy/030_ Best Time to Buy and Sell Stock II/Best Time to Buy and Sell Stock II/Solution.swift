class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        return 0
    }
}

/*
 i번째 요소 = i번째 일(day)인 배열이 주어집니다.
 달성 가능한 최대 수익을 리턴합니다. 가능한 많이 거래를 완성해야 할 수 있습니다.
 (매수/매도 거래쌍을 최대한 발생.) 단, 매수나 매도를 지속적으로 반복할 수는 없습니다.
 
 * 생각을 해봅시다.
 
 Input: prices = [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 
 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before buying again.
 
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e., max profit = 0.
 */
