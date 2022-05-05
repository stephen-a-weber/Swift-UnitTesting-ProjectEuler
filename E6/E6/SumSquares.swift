//
//  SumSquares.swift
//  E6
//
//  Created by stephen weber on 4/30/22.
//

import Foundation

class SS {
    
    func sumOfSquares(_ n: Int) -> Int {
        
        var total = 0
        for i in 1...n { total += i*i}
        return total
    }
   
    func SquareOfSum(_ n: Int) -> Int {
        var total = (n * (n+1) ) / 2
        return total * total
    }
    
    func Solution(_ n: Int)-> Int {
        return SquareOfSum(n) - sumOfSquares(n)
    }
    
    
}


/*
 The sum of the squares of the first ten natural numbers is, 385
 
 The square of the sum of the first ten natural numbers is,3025
 
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .3025-385 = 2640
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 

 */
