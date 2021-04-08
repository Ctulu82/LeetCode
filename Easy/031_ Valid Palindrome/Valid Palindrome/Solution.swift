
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charArray: [Character] = []
        
        for chr in s {
            if chr.isLetter || chr.isNumber {
                charArray.append(contentsOf: chr.lowercased())
            }
        }
        
        for i in 0 ..< charArray.count / 2 {
            if charArray[i] != charArray[charArray.count - 1 - i] {
                return false
            }
        }
        
        return true
    }
}

/*
 문자열 s가 주어지면 알파벳과 숫자만 고려하여 palindrome인지 확인합니다.
 - s에서 특수문자, 숫자를 제거합니다.
 - s를 lowercase 화 합니다.
 - s 와 s.reverse 를 비교하여 같은지 return 합니다. (메모리 에러 발생 가능.)
 - 이 문자열 배열의 양끝을 순회하면서 같은 문자 또는 숫자인지 판별합니다.
 
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 */
