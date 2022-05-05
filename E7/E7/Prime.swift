    //
    //  Prime.swift
    //  E7Tests
    //
    //  Created by stephen weber on 4/30/22.
    //

import Foundation

class Prime {
    
    func collection(_ n: Int)-> [Int]{
        if n<2{return []}
        var primes = [Int]()
        var sieve = [Bool](repeating: true, count: n+1)
        for i in  2...n{
            
            if sieve[i]{
                primes.append(i)
                for j in stride(from: 2*i, through: n, by: i) {
                    sieve[j] = false
                }
                
            }
            
           
        }
        return primes
    }
    func ValueOfArrayToNthPrime()->Int {
    var low = 0
    var high = 1000000
    let n = 10001
    var Mid = n
    var count = 1
    var P = [Int]()
    while P.count != n {
       
        P = collection(Mid)
        print(count,": ",P.count,Mid)
        count+=1
        if P.count>n {
            let b = (Mid + low) / 2
            high = Mid
            Mid = b
        }
        if P.count<n {
            let b = (Mid + high) / 2
            low = Mid
            Mid = b
        }
        
    }
    return Mid
    
    }
    
}
    /*
     By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
     
     What is the 10 001st prime number?
     */
