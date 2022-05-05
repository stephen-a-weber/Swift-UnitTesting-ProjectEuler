//
//  PowerDigits.swift
//  E16Tests
//
//  Created by stephen weber on 5/4/22.
//

import Foundation

class PowerDigits {
    
    var answer :String = ""
    
    
    func sumString(_ n: String)->Int{
        let it = Array(n)
        var total = 0
        for i in it {
            total += Int(String(i))!
        }
        return total
    }
    func makeAnswer(n:Int){
        answer = String(n)
        
    }
    func digits(_ n:Int) {
         var answer = "1"
        var total = sumString(answer)
        
        for i in 0..<n {
            
        }
        var k = Array(answer)
        
        
        
    }
    
    func intToArray(_ n: Int )->[Character] {
        var V = Array(String(n))
        V.reverse()
        return V
    }
    
    func multString(str: [Character])->[Character] {
        var reversedStr = str.reversed()
        var answer = ""
        var carry = 0
        for i in reversedStr {
             
           let x = Int(String(i))! * 2 + carry
            carry = 0
            if x>9 {
                let A = x%10
                answer+=String(A)
                carry = 1
                
            }
            else {
                answer += String(x)
            }
            
            
           
        }
        if carry == 1 {
            answer += "1"
        }
        var result = Array(answer)
        result.reverse()
        
        return result
    }
    
    func solution(n: Int)->Int {
        var total = intToArray(1)
        for _ in 0..<n {
            total = multString(str:total)
            
        }
        let value = charToString(n:total)
         
        return sumString(value)
    }
    
    
    func charToString(n: [Character])->String{
        var value = ""
        for i in n {
            value += String(i)
            
        }
        return value
    }
}
