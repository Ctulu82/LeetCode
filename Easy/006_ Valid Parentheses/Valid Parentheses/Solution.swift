
class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 == 1 {
            return false
        }
        
        let array = Array(s)    // 하나씩 쪼개서 문자 배열화.
        var stack = [String]()  // 문자열을 담는 배열 선언.
      //print("\(array)\n")
        
        for character in array {
          //print("현재 character: \(character)")
            switch character {
            case "(":
                stack.append(")")
            case "{":
                stack.append("}")
            case "[":
                stack.append("]")
            default:
                // 세 괄호의 끝이 발견되면 빈 배열은 시작이 전혀 나타나지 않았음을 의미.
                if stack.isEmpty {
                    return false
                }
                // '뒤에서부터' 요소를 1개 삭제, 삭제한 요소를 옵셔널 형태로 리턴하여 'character'와 일치하는지 확인.
                if let pop = stack.popLast(), pop != String(character) {
                    // 배열의 popLast가 return한 요소가 자신과 같지 않으면 시작 부분이 비대칭임.
                    return false
                }
            }
          //print("현재 stack: \(stack)\n")
        }
        
        // 마지막 문자 배열이 실행되면 'stack'이 비어있는 유효한 문자열로 팝되고 true가 return.
        return stack.isEmpty
    }
}
