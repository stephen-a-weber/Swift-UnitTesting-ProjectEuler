//
//  FactorialSum.swift
//  E20
//
//  Created by stephen weber on 8/14/22.
//
/*
 
 n! means n × (n − 1) × ... × 3 × 2 × 1
 
 For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
 and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
 
 Find the sum of the digits in the number 100!
 
 
 */
import Foundation
class FactorialSum {
    
    var x = 0
    var y = 0
    var r = [Int]()
    
    func mult(left: String, right: String) -> String {
        var leftCharacterArray = left.reversed().map { Int(String($0))! }
        var rightCharacterArray = right.reversed().map { Int(String($0))! }
        var result = [Int](repeating: 0, count: leftCharacterArray.count+rightCharacterArray.count)
        
        for leftIndex in 0..<leftCharacterArray.count {
            for rightIndex in 0..<rightCharacterArray.count {
                
                let resultIndex = leftIndex + rightIndex
                
                result[resultIndex] = leftCharacterArray[leftIndex] * rightCharacterArray[rightIndex] + (resultIndex >= result.count ? 0 : result[resultIndex])
                if result[resultIndex] > 9 {
                    result[resultIndex + 1] = (result[resultIndex] / 10) + (resultIndex+1 >= result.count ? 0 : result[resultIndex + 1])
                    result[resultIndex] -= (result[resultIndex] / 10) * 10
                }
                
            }
            
        }
        if result.last == 0 {
            let _ = result.popLast()
        }
        result = Array(result.reversed())
        
        return result.map { String($0) }.joined(separator: "")
    }
     
    func running(n: Int)->String {
        var p = "1"
        for x in 1...n {
        let y = String(x)
         p = mult(left:p,right:y)
            
        }
       return p
    }
    
    
    func multiply(x: Int, y: Int )->String {
        
        r.append(x*y)
        
        
        return printResult()
    }
    
    func factRun(n:Int) ->String{
         r = []
        if n < 1 { return "NOTHING"}
        if n == 1 { return "1"}
        if n == 2 { return "2"}
        
        var p = multiply(x:1,y:2)
        for x in 3...n {
            p = multByN(n:x)
        }
        return p
        
        
        
        
        
        
    
    }



    func multByN(n: Int)->String {
        var t:[Int] = r.reversed()
        
        var carry = 0
        let length = t.count
        for x in 0..<length {
           
            let y = t[x]*n + carry
            if y < 10 { t[x] = y
                carry = 0
            }
            else {
            t[x] = y%10
                carry  = (y - y%10)/10}
            
        }
      
        if carry>0 {
            t.append(carry)
        }
         
        var e:[Int] = t.reversed()
        r = e
        return printResult()
    }
    
    
     
    
    func printResult()->String {
        var q = ""
        let e = r.count
        for x in 0..<e {
            q += String(r[x])
            
        }
        return q
    }
}
