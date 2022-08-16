//
//  NonAbundantSums.swift
//  E23
//
//  Created by stephen weber on 8/15/22.
//
/*
 
 
 Non-abundant sums
 
 
 
 Problem 23
 A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
 
 A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
 
 As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
 
 Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
 
 
 Answer:  4179871
 Completed on Thu, 24 Jan 2013, 20:48
 
 */
import Foundation

class Perfect {
    var primes = [Int]()
    var dictProperDivisors = [Int:Int]()
    var ArrayTwoAbundants = [Int]()
    var arrayAbundants = [Int]()
    var SetOfTwoAbundants = Set<Int>()
    var theSet = Set(1...28123)
    
    var aSet = [Bool].init(repeating: true, count: 28123)
    
    
    func sumProperDivisor(n:Int)->Int {
        if n < 2 { return 0}
        var dictDivisors = [Int:Int]()
     
        var m = n
        for x in primes {
            if x>m {
                break
            }
          //  print("Trying this prime ",x)
         var t = 0
            while m%x == 0 {
                t+=1
                m/=x
            }
            if t>0 {
                dictDivisors[x]=t
            }
            
            
            
        }
        
        /*
         
         d(n) = (2^3-1)   (5^2-1)   (11^2-1)
         ------- * ------- * --------
         1         4         10
         
         */
        
        var amount = 1
        for (a,b) in dictDivisors {
             
            let power = Int(pow(Double(a),Double(b+1))) - 1
            amount *= power/(a-1)
        }
        amount -= n
        // subtracting because we want proper divisors (exclude original number)
        return amount
    }
    
   
    
    func makePrimes(n: Int) {
        if n < 2 {
            return
        }
        var sieve = Array.init(repeating: true, count: n+1)
        primes.append(2)
        for x in stride(from: 2, through: n, by: 2) {
            sieve[x] = false
        }
            for x in stride(from:3, through:n, by:2) {
                if sieve[x] == true {
                    primes.append(x)
                    for y in stride(from: 2*x ,through:n, by: x) {
                        
                        sieve[y] = false
                    }
                }
            }
      
        
       // print (sieve)
    }
    
    func fillDivisorDict(n: Int) {
        for x in 0...n+1 {
            let  i = sumProperDivisor(n:x)
            dictProperDivisors[x] = i
        }
    }
    func Faster(n:Int) {
        for x in 0...n+1 {
            let i = sumProperDivisor(n:x)
            if i>x  {
                arrayAbundants.append(x)
            }
        }
    }
    
    
    func findAbundants () {
        for (a,b) in dictProperDivisors {
            if b > a {
                arrayAbundants.append(a)
            }
        }
        
    }
    
//    func findSetOfAbundants() {
//        for (a,b) in dictProperDivisors {
//            if b > a {
//               SetOfAbundants.insert(a)
//            }
//        }
//    }
//    
    
    
    func findTwoSumAbundants() {
         
        
        print(arrayAbundants.count)
        let T = arrayAbundants.count
        for x in 0..<T  {
            for y in x..<T {
                let X=arrayAbundants[x]
                let Y=arrayAbundants[y]
                let m = X+Y
                if m < 28122 {
                    ArrayTwoAbundants.append(m)
                    
                }
                else { break}
            }
        }
        
    }
    
    func findSetTwoSumAbundants() {
        
        
        print(arrayAbundants.count)
        let T = arrayAbundants.count
        for x in 0..<T  {
            for y in x..<T {
                let X=arrayAbundants[x]
                let Y=arrayAbundants[y]
                let m = X+Y
                if m < 28123 {
                    SetOfTwoAbundants.insert(m)
                    
                }
                else { break}
            }
        }
        
    }
    
    func RemoveFromSET() {
        
        
        print(arrayAbundants.count)
        let T = arrayAbundants.count
        for x in 0..<T  {
            for y in x..<T {
                let X=arrayAbundants[x]
                let Y=arrayAbundants[y]
                let m = X+Y
                if m < 28123 {
                  aSet[m] = false
                    
                }
                else { break}
            }
        }
        
    }
    
}
