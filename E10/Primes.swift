//
//  Primes.swift
//  E10
//
//  Created by stephen weber on 5/1/22.
//

import Foundation


class Primes {
    
    func primes(_ n: Int) -> [Int] {
        if n<2 {return []}
       var primes = [Int]()
        var sieve = [Bool].init(repeating: true, count: n+1)
        for a in 2...n {
            if sieve[a] == true {
                primes.append(a)}
            for b in stride(from: 2*a, through: n , by: a) { sieve[b] = false}
        }
        
        
        return primes
    }
   
}
/*
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 
 Find the sum of all the primes below two million.
 
 */
