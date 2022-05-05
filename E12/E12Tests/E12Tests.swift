//
//  E12Tests.swift
//  E12Tests
//
//  Created by stephen weber on 5/2/22.
//

import XCTest
@testable import E12

class E12Tests: XCTestCase {
    var triangle : Triangle!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        triangle = Triangle()
        
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

    func testWhatISTheNthTriangleNumber() {
        XCTAssertEqual(triangle.tri(1),1)
        XCTAssertEqual(triangle.tri(2),3)
        
        XCTAssertEqual(triangle.tri(3),6)
        XCTAssertEqual(triangle.tri(7),28)
    }
    
    func testGCD() {
        XCTAssertEqual(triangle.gcd(1,2),1)
        XCTAssertEqual(triangle.gcd(2,2),2)
         XCTAssertEqual(triangle.gcd(14,21),7)
    }
    func testFindFactors() {
        XCTAssertEqual(triangle.factors(1),[1])
        XCTAssertEqual(triangle.factors(3),[1,3])
        XCTAssertEqual(triangle.factors(6),[1,2,3,6])
        XCTAssertEqual(triangle.factors(28),[1,2,4,7,14,28])
             print(triangle.factors(76576500))
    }
    
    
    func testNansNplusOne() {
        //triangle numbers total to n(n+1)/2
        // Want factor that
        // n/2 and (n+1)
        // n is odd or even
        // or
        // n/2 & (n+1)
        // n and (n+1)/2
        XCTAssertEqual(triangle.theN(1),[1])
        XCTAssertEqual(triangle.theN(2),[1,3])
        XCTAssertEqual(triangle.theN(3),[1,2,3,6])
        XCTAssertEqual(triangle.theN(4),[1,2,5,10])
        XCTAssertEqual(triangle.theN(5),[1,3,5,15])
        XCTAssertEqual(triangle.theN(6),[1,3,7,21])
        XCTAssertEqual(triangle.theN(7),[1,2,4,7,14,28])
        XCTAssertEqual(triangle.theN(8),[1, 2, 3, 4, 6, 9, 12, 18, 36])
        XCTAssertEqual(triangle.theN(72),[1, 2, 3, 4, 6, 9, 12, 18, 36, 73, 146, 219, 292, 438, 657, 876, 1314, 2628])
//        for (a,b) in triangle.theFactors {
//            print(a,b)
//        }
    }
    
    func testTheEnd() {
        for i in 1...10000 {
            
           let r = triangle.theN(i)
            print(i,r.count)
            if r.count>500 {
                print (i,r,r.count)
                break
            }
            
        }
    }
    
    func testGrowthofTriangleNumberFactors() {
        for r in 2...100 {
        let h = triangle.tri(r)
        let g = triangle.factors(h).count
        let j = triangle.justNumbersOfFactors(r)
           
        XCTAssertEqual(g,j)
        }
    }
    
    func testTheSolution() {
        var r = 2
        var y  = true
        while y {
        let h = triangle.tri(r)
       // let g = triangle.factors(h).count
            let j = triangle.justNumbersOfFactors(r)
        //    XCTAssertEqual(g,j)
            if j > 500 {
                y = false
                print(print(r,h,j))
                /*
                 12375 76576500 576
                 the 12375 triangle number is 76576500 with 576 factors
                 although this still took 7.829 seconds
                 */
            }
        
            r+=1
       // print( triangle.factors(h))
        }
       // print(r,h,g,j)
    }
    func testuseFactors(){
        
        for i in 1...12376 {
            if triangle.useFactors(i) > 500 {
                print ("Here is the solution",i,triangle.tri(i),triangle.justFactors[triangle.tri(i)])
                
                /*
                 
                 Awesome
                 
                 rewrite with memorization of factors with useFactors
                 produces
                 
                 Here is the solution 12375 76576500 Optional(576)
                 
                 which is effectively the same solution
                 But this run is finished in 0.103 seconds.
                 */
            }
        }
    }
    
//    func testBruteForceSolution(){
//
//        for y in 1...100 {
//        let x = triangle.tri(y)
//            let z = triangle.factors(x).count
//
//       // print(y,x,z,triangle.factors(x))
//
//    }
//    }
    
    
    /*
     commented out. Ran really slow. Got answer by noting that
     obviously the factors increased as the triangle number
     so the range for y around 12000 to 13000 could start there
     it does not require starting at 1.
     This original created the factors as a list.
     Look at test function open right above. Finished coding
     there by both saving just the number of factors. They arrive in pairs. Any factor of M must have another factor to get to M.
     like primes can go to sqrt of number to collect all of them
     
     Memorization of factors of n * (n+1) /2 or triangle number sum
      are coprime.
     saving factors of each coprime. 
     */
}
