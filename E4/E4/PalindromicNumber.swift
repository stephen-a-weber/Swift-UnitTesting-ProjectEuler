//
//  PalindromicNumber.swift
//  E4
//
//  Created by stephen weber on 4/30/22.
//

import Foundation


class PalindromicNumber {
    
    var AnswerPack = [Int]()
    var AnswerDict = [Int:(Int,Int)]()
    
    
    func trial()-> Int {
        var solution :Int = 1
      
        
        for x in stride(from:999,to:100,by: -1) {
            for y in stride(from:999,to:100,by: -1) {
                solution = x * y
                if check(String(solution)) { AnswerPack.append((solution))
                    AnswerDict[solution] = (x,y)
                    
                }
            }
        }
        AnswerPack.sort()
        AnswerPack.reverse()
        return AnswerPack[0]
    }
    func number()-> Int {
        return 111
    }
    
    
    func check(_ n: String)-> Bool {
        
        let k = Array(n)
       
        let end = k.count
        if end<2 { return false}
        for i in 0..<end/2{
            
            if k[i] != k[end-i-1] {return false}
            
            
        }
              print(n,k)
        return true
    }
    
    
}

/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 */

