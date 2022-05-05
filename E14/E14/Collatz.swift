    //
    //  Collatz.swift
    //  E14
    //
    //  Created by stephen weber on 5/4/22.
    //

import Foundation


class Collatz {
    
    
    var sieve = [Bool](repeating: true, count :1000001)
    var possible = Set(1...1000000)
    
    var maxCount = 0
    var maxInt = 0
   var theList = [Int:Int]()
    
    func EvenReverseCollatz(_ n : Int) -> Int {
        let N = n / 2
        
     
        return N
    }
    
    func OddReverseCollatz(_ n : Int) -> Int {
        let N = 3 * n + 1
     
        return N
    }
    
    func chain(_ n: Int ){
        var count = 1
            var r = n
     
            while r != 1 {
                if r%2 == 0 {
                    count+=1
                    r =   EvenReverseCollatz(r)
                }
                else {
                    count += 1
                    r = OddReverseCollatz(r)
                }
              
            }
     //   theList[n] = count
        if count > maxCount {
            maxCount = count
            maxInt = n
        }
      
    }
     
    func theSolution(_ n: Int)  {
        var count = 1
        var r = n
        
        while r != 1 {
            if r%2 == 0 {
                
                r =   EvenReverseCollatz(r)
                if let g = theList[r] {
                    count += g
                    r = 1
                }
                else {
                    count += 1
                }
            }
            else {
                
                r = OddReverseCollatz(r)
                if let g = theList[r] {
                    count += g
                    r = 1
                }
                else {
                    count += 1
                }
            }
            
        }
        theList[n] = count
        if count > maxCount {
            maxCount = count
            maxInt = n
        }
        
    }
    
    
    
    
    
    
    
    
    func revatureSuits(_ n: Int, _ m: Int) ->Int  {
        if m == 0 { return n}
        var days = 0
        var mySuits = n
        var tomorrow = false
    
        while tomorrow || mySuits>0 {
            if tomorrow {
                tomorrow = false
                mySuits += 1
            }
            mySuits -= 1
            days += 1
            if days%m == 0  {
                tomorrow = true
            }
        }
        
        
        
        
        return days
    }

}
