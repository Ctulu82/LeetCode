class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let string = s.trimmingCharacters(in: .whitespaces) // 뒤의 공백을 제거합니다.
        let array = string.components(separatedBy: " ")
        
        return array.last!.count
    }
}

/*
 요구사항
 문자열을 space로 구분하여 배열에 넣고 마지막 인덱스 값의 길이를 리턴합니다.
 
 Input: s = "Hello World"
 Output: 5
 
 Input: s = " "
 Output: 0
 
 Input: "a "
 Output: 1
 
 Swift 기본 문자열 함수썼는데 엄청 느리다고 나옵니다만 실제 문제로 출제될 가능성이 적어 가독성을 우선시하는 간단한 코드로 작성되었습니다.
 */
