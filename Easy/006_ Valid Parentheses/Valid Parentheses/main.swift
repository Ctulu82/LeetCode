//
//  main.swift
//  Valid Parentheses
//
//  Created by taehyun on 2021/03/17.
//

import Foundation

let solution = Solution()

print(solution.isValid("()"))
print(solution.isValid("()[]{}"))
print(solution.isValid("(]"))
print(solution.isValid("([)]"))
print(solution.isValid("{[()]}"))
