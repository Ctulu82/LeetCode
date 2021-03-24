class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle != "" else {
            return 0
        }
        guard haystack.count >= needle.count else {
            return -1
        }
        
        let s1Array = Array(haystack)
        let needleArray = Array(needle)
        
        for i in 0...s1Array.count - needleArray.count {
            if Array(s1Array[i...i + needleArray.count - 1]) == needleArray {
                return i
            }
        }
        
        return 0
    }
}

/*
 요구조건
 haystack에서 needle이 처음으로 등장하는 index를 반환한다. 존재하지 않으면 -1을 반환한다.
 
 풀이방법
 haystack, needle을 배열로 바꿔서 주어진 범위의 문자배열과 needle배열과 같으면 해당 인덱스를 반환합니다.
 */
