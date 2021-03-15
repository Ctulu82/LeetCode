//
//  Solution.swift
//  Reverse Integer
//
//  Created by taehyun on 2021/03/15.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let stringValue: String = String(x)
        var value = String(stringValue.reversed())
        
        if x < 0 {
            value.removeLast()
            value.insert("-", at: value.startIndex)
        }
        
        if let answer = Int32(value) {
            return Int(answer)
        } else {
            return 0
        }
    }
}
