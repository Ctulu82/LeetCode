//
//  Solution.swift
//  Two Sum
//
//  Created by taehyun on 2021/03/15.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i ..< nums.count {
                if i != j, nums[i] + nums[j] == target {
                    return [i,j]
                }
            }
        }
        
        return []
    }
}
