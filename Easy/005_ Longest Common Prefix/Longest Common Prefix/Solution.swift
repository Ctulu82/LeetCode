
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else {
            return ""
        }
        
        if strs.count == 1 {
            return strs[0]
        }
        
        let standard = strs[0]
        
        // 1. 첫번째 for 문에서는 배열의 0번째 인덱스를 기준으로 설정하여 문자열의 길이를 줄여간다.
        for i in 0 ..< standard.count {
            let prefix = String(standard.prefix(standard.count - i))
          //print("\(i)번 prefix : \(prefix)")
            
            for j in 0 ..< strs.count {
                // 2. 두번째 for 문에서는 전체 배열을 순회하며 기준으로 설정한 값이 hasPrefix로 true값이 나오지 않을 때,
                if !strs[j].hasPrefix(prefix) {
                  //print("  \(j)번 배열 요소 \(strs[j]) 와 prefix 불일치하므로 중단!")
                    // 3. 두번째 순회를 빠져나고 기준 값의 길이를 줄여서 재설정하고 반복.
                    break
                }
                if j == strs.count - 1 {
                  //print(" The final j : \(j)")
                    return prefix
                }
            }
        }
        
        return ""
    }
}

// ["flower", "flow", "flight"]
// ["dog", "racecar", "car"]
