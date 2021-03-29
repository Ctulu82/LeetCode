class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var maxNum = b
        var minNum = a
        
        if a.count > b.count {
            maxNum = a
            minNum = b
        }
        
        let diff = maxNum.count - minNum.count
        
        for _ in 0 ..< diff {
            minNum = ("0\(minNum)")
        }
        var answer = ""
        var digit = 0
        var carry = 0   // 이전 자리수에서 넘어온 올림값입니다.
        
        for i in (0 ..< maxNum.count).reversed() {  // i = n ~ 0
            let index = maxNum.index(maxNum.startIndex, offsetBy: i)
            let sum = minNum[index].wholeNumberValue! + maxNum[index].wholeNumberValue! + carry
            carry = sum / 2
            digit = sum % 2
            answer = "\(digit)\(answer)"
        }
        if carry != 0 {
            answer = "\(carry)\(answer)"
        }
        return answer
    }
}

/*
 Input: a = "11", b = "1"
 calc: 3(11) + 1(1) = 4(100)
 Output: "100"
 
 Input: a = "1010", b = "1011"
 Output: "10101"
 
 fail 1 : 아래처럼 초과되는 상황이 발생할 수 있으므로 별도의 함수를 만들어야 함.
 "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101"
 "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"
 
 
 두 문자열을 문자 배열로 변환하고 합계를 정의하여 총 결과를 배치 한 다음 캐리 여부를 판단합니다.
 두 배열의 끝에서 덧셈을 시작합니다. 합계가 2 이상이면 합계에서 2를 빼고 캐리가 필요하며 캐리 값이 다음 합계로 가져옵니다. .
 합계가 완료 될 때마다 합계의 첫 번째 위치에 넣습니다.
 루프의 끝에서 캐리 값이 남아 있으면 합계에 넣고 합계 문자열을 반환합니다.
 */
