//
//  Multiple.swift
//  E5
//
//  Created by stephen weber on 4/30/22.
//

import Foundation

class Multiple {
    var Storage = [Int:Int]()
    
    func Brute()->Int {
       
      var answer = 1
        for (i,j) in Storage {
            for _ in 0..<j {
                answer*=i
            }
        }
       
       
       return answer
    }
    
    func multiToN(_ n: Int)->Int{
        for i in 1...n {
            let r = factors(i)
            addFactorsToStorage( r)
            
            
        }
        return Brute()
    }
    
    
    func addFactorsToStorage(_ n: [Int:Int]) {
        
        for (i,j) in n {

            if Storage.keys.contains(i) {
                Storage[i] = max(j,Storage[i]!)
            }
            else
                {
                Storage[i] = j
                }
        }
        
        
    }
    
    
    
    
    func factors(_ number: Int)->[Int:Int]{
        var n = number
        var answer = [Int:Int]()
        var Divisor = 2
      
            while n>1{
            while n%Divisor==0 {
                if answer.keys.contains(Divisor) {
                    answer[Divisor]! += 1
                }
                else {
                    answer[Divisor] = 1
                }
                n/=Divisor
            }
        
            Divisor+=1
         
            }
        
        return answer
    }
}
/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 

 */
