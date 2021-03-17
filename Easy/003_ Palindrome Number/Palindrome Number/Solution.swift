//
//  Solution.swift
//  Palindrome Number
//
//  Created by taehyun on 2021/03/17.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let stringValue: String = String(x)
        let backword: String = String(String(x).reversed())
    
        if stringValue.isEqual(backword) {
            return true
        } else {
            return false
        }
    }
}
