
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res = [[Int]]()
        
        if numRows == 0 {
            return res
        }
        
        res.append([1])
        if numRows == 1 {
            return res
        }
        
        res.append([1, 1])
        if numRows == 2 {
            return res
        }
        
        for i in 2 ..< numRows {
            var temp = [Int]()
            temp.append(1)
            
            let lastRow = res[i - 1]
            
            for i in 0 ..< lastRow.count {
                if i == lastRow.count - 1 {
                    temp.append(1)
                } else {
                    temp.append(lastRow[i] + lastRow[i + 1])
                }
            }
            
            res.append(temp)
        }
        
        return res
    }
}

/*
 정수 numRows 가 주어지면, Pascal의 삼각형의 요소들을 리턴합니다.
 
 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
     1
    1 1
   1 2 1
  1 3 3 1
 1 4 6 4 1
 
 
 Input: numRows = 1
 Output: [[1]]
 */
