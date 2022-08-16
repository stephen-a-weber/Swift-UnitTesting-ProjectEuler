//
//  E23Tests.swift
//  E23Tests
//
//  Created by stephen weber on 8/15/22.
//

import XCTest
@testable import E23

class E23Tests: XCTestCase {
    var soln : Perfect!
    override func setUpWithError() throws {
        soln = Perfect()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
 /*
  HOW TO SOLVE
  1. find sum of proper divisors of any number
  2. get dict of all sums from 1 ... 28123
  3. get array of all abundant numbers
  4. go through 28123 subtract each abundant number less
     and if result is not in the list of abundant
     numbers then but this original number into
     solution group list
  5. return sum of this solution list of numbers
  
  
 step 1
  To get the sum of divisors consider the following:
  if n = 220 say, then n = 2^2 * 5^1 * 11^1 and
  the sum of its divisors is given by
  
  d(n) = (2^3-1)   (5^2-1)   (11^2-1)
  ------- * ------- * --------
  1         4         10
  
 ( P^(a+1) - 1 ) / (a-1)
  
  = 284
  
  and this can be generalized once we know the prime factors
  of the number.
  
  make primes list first
  check each number after or along the way
  to get 



  */
    
    func testmakeprimes() {
        soln.makePrimes(n:1000)
        print(soln.primes)
    }
    
    
    func testmakeProperDivisors() {
        soln.makePrimes(n:100)
        XCTAssertEqual(soln.sumProperDivisor(n: 0),0)
        XCTAssertEqual(soln.sumProperDivisor(n: 1),0)
        XCTAssertEqual(soln.sumProperDivisor(n: 2),1)
        XCTAssertEqual(soln.sumProperDivisor(n: 3),1)
       XCTAssertEqual(soln.sumProperDivisor(n: 4),3)
        XCTAssertEqual(soln.sumProperDivisor(n: 220),284)
        
        XCTAssertEqual(soln.sumProperDivisor(n: 11),1)
        
        
    }
    
    func testfillDictionaryWithProperDivisorsTo28123() {
        soln.makePrimes(n: 28124)
        soln.fillDivisorDict(n:28123)
        XCTAssertEqual(soln.dictProperDivisors[220],284)
        
    }
    
    func testmakeArrayOfAllAbundantNumbers()  {
        soln.makePrimes(n: 28124)
        soln.fillDivisorDict(n:28123)
        soln.findAbundants()
        soln.arrayAbundants.sort()
      //  print(soln.arrayAbundants)
       // soln.findTwoSumAbundants()
      //  print(soln.ArrayTwoAbundants.count)
        
        
    }
    
    func testmakeArrayofSumOfTwoAbundantNumbers() {
        soln.makePrimes(n: 28124)
        soln.fillDivisorDict(n:28123)
        soln.findAbundants()
        soln.arrayAbundants.sort()
        soln.findTwoSumAbundants()
        print(soln.ArrayTwoAbundants.count)
        var e = Set(soln.ArrayTwoAbundants)
        var total = 0
        for i in 1..<28123 {
            if !e.contains(i) {
                total += i
            }
        }
        print("Answer ",total)
        //Answer  4179871
        
        //It took 6 seconds so it can be optimized somewhere....
        // first I obviously made an array and then went through it to a set so. Start with gathering sumAbundants as set.
    }
    
    func testmakeArrayofSumOfTwoAbundantNumbersBETTERTIME() {
        soln.makePrimes(n: 28124)
        soln.fillDivisorDict(n:28123)
       
        
        soln.findAbundants()
       soln.arrayAbundants.sort()
//        soln.findTwoSumAbundants()
        soln.findSetTwoSumAbundants()
      //  print(soln.SetOfTwoAbundants.count)
      //  print(soln.ArrayTwoAbundants.count)
      //  var e = Set(soln.ArrayTwoAbundants)
        var total = 0
        for i in 1..<28123 {
            if !soln.SetOfTwoAbundants.contains(i) {
                total += i
            }
        }
        print("Answer ",total)
        
      //  Answer  4179871
        
            //It took 5 seconds so it can be optimized somewhere....
            
    }
    
    
//    func test2makeArrayofSumOfTwoAbundantNumbersBETTERTIME() {
//        soln.makePrimes(n: 28124)
//      //  soln.fillDivisorDict(n:28123)
//        //get rid of two steps here and dictionary.
//        // saved nothing .5 seconds
//        //going to make set of 28123 number and remove each twosum
//        soln.Faster(n:28123)
//       // soln.findAbundants()
//        soln.arrayAbundants.sort()
//       // print(soln.arrayAbundants)
//      //  print(soln.arrayAbundants.count)
//            //        soln.findTwoSumAbundants()
//        soln.RemoveFromSET()
//            //  print(soln.SetOfTwoAbundants.count)
//            //  print(soln.ArrayTwoAbundants.count)
//            //  var e = Set(soln.ArrayTwoAbundants)
//        var total = 0
//        for i in soln.theSet {
//            total += i
//        }
//        print("Answer ",total)
//
//            //  Answer  4179871
//
//            //It took 5 seconds so it can be optimized somewhere....
//
//    }
// //    it has a flaw giving wrong answer but not pursuing it as it just dropped time to 4.7
    
            func test2makeArrayofSumOfTwoAbundantNumbersBETTERTIME() {
                soln.makePrimes(n: 28124)
              //  soln.fillDivisorDict(n:28123)
                //get rid of two steps here and dictionary.
                // saved nothing .5 seconds
                //going to make set of 28123 number and remove each twosum
                soln.Faster(n:28123)
               // soln.findAbundants()
                soln.arrayAbundants.sort()
               // print(soln.arrayAbundants)
              //  print(soln.arrayAbundants.count)
                    //        soln.findTwoSumAbundants()
                soln.RemoveFromSET()
                    //  print(soln.SetOfTwoAbundants.count)
                    //  print(soln.ArrayTwoAbundants.count)
                    //  var e = Set(soln.ArrayTwoAbundants)
                var total = 0
                for x in 0...28122 {
                  let  P = soln.aSet[x]
                    if P {
                        total += x}
                }
                print("Answer ",total)
        
                    //  Answer  4179871
        
                    //It took 4.648
        //Saved 1.5 seconds.
                
            }
        
}
