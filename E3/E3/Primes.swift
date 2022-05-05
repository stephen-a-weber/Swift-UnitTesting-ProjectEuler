//
//  Primes.swift
//  KentBeckTDDMoney
//
//  Created by stephen weber on 4/30/22.
//

import Foundation

class Primes {
    
    func factors(_ number: Int)->[Int]{
        var soln = [Int]()
        var n = number
        var Divisor = 2
       while n>1 {
            while n%Divisor==0 {
        
         n /= Divisor
                soln.append(Divisor)
        }
            Divisor += 1
        }
//    7   }
        
        print(number,soln)
        return soln
    }
    
}


/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 
 */
