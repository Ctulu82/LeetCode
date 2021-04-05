
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        }
        
        var res = [Int](repeating: 0, count: rowIndex + 1)
        res[0] = 1
        
        for i in 1...rowIndex {
            var j = i
            while j >= 1 {
                res[j] += res[j - 1]
                j -= 1
            }
        }
        
        return res
    }
}

/*
 정수 rowIndex 가 주어지면, rowIndex번째의 요소들을 배열로 리턴합니다.
 
 Input: rowIndex = 3
 Output: [1,3,3,1]
 
 Input: rowIndex = 0
 Output: [1]
 
 Input: rowIndex = 1
 Output: [1,1]
 
 문제 해결
 먼저 k 번째 배열에 k + 1 개의 요소가 있다는 것을 정의하고,
 k가 1이면 직접 [1], k> 1로 돌아가서 파스칼 삼각형의 1회차에서 그룹화를 시작합니다.
 각 회차는 1을 건너 뛰는 것으로 시작하여 회차의 요소를 뒤에서 앞으로 채웁니다.
 각 요소는 정확히 이전 회차의 요소 + 이전 요소입니다.
 
 k = 3
 res = [1,0,0,0]
 
 1회차
 k[1] = k[1] + k[0] = 0 + 1
 res = [1,1,0,0]
 2회차
 k[2] = k[2] + k[1] = 0 + 1
 k[1] = k[1] + k[0] = 1 + 1
 res = [1,2,1,0]
 3회차
 k[3] = k[3] + k[2] = 0 + 1
 k[2] = k[2] + k[1] = 1 + 2
 k[1] = k[1] + k[0] = 2 + 1
 res = [1,3,3,1]

 */
