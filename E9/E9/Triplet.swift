//
//  Triplet.swift
//  E9Tests
//
//  Created by stephen weber on 5/1/22.
//

import Foundation

class Triplet {
    
    var A : Int = 0
    var B : Int = 0
    var C : Int = 0
    
    
    
    func solution() -> Int {
        for x in 1...998 {
            for y in 1...998 {
                let z = 1000 - x - y
                let array = [x*x, y*y,z*z]
                if ((array[0] + array[1] == array[2]) ||
                    (array[0] + array[2] == array[1]) ||
                    (array[1] + array[2] == array[0]) ){
                    print(x,y,z)
                    return x*y*z
                }
            }
        }
        return -123
    }
    
    
    
    
    
}
/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a2 + b2 = c2
 For example, 32 + 42 = 9 + 16 = 25 = 52.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */
