
class Solution {
    func romanToInt(_ s: String) -> Int {
        let arr = s.map { String($0) }  // 문자 배열
        var answer = 0

        for i in 0 ..< arr.count-1 {
            if decode(arr[i]) < decode(arr[i+1]) {
                answer -= decode(arr[i])
            } else {
                answer += decode(arr[i])
            }
        }

        answer += decode(arr[arr.count-1])

        return answer
    }

    func decode(_ roman: String) -> Int {
        switch roman {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
}
