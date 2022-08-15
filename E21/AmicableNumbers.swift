//
//  AmicableNumbers.swift
//  E21
//
//  Created by stephen weber on 8/14/22.
//
/*
 Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
 If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
 
 For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
 
 Evaluate the sum of all the amicable numbers under 10000.
 
 
 Answer:  31626
 Completed on Thu, 24 Jan 2013, 18:40

 
 */
import Foundation
import SwiftUI
class Amicable {
    
    var dictNumbers = [Int:Int]()
    
    
    func divisors(m: Int)->[Int] {
        var cells = [Int]()
       
        for x in 1...(m-1) {
            if m % x == 0 {
                cells.append(x)
            }
        }
        
        
        return cells
    }
    
    func sumCells(cells: [Int]) -> Int {
        var count = 0
        
        for x in 0..<cells.count {
            count += cells[x]
        }
        
        return count
    }
    
    func allofthem() {
        
        dictNumbers[1]=1
        for x in 2...9999 {
            let p =  divisors(m:x)
            let r = sumCells(cells:p)
            dictNumbers[x]=r
        }
    }
    
}
