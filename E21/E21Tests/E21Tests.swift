//
//  E21Tests.swift
//  E21Tests
//
//  Created by stephen weber on 8/14/22.
//

import XCTest
@testable import E21

class E21Tests: XCTestCase {
    var soln : Amicable!
    override func setUpWithError() throws {
        
        soln = Amicable()
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
 
    
    func testCreateDivisors() {
        
        print(soln.divisors(m:220))
    }
    
    func testRunAmicable() {
         print(soln.sumCells(cells:soln.divisors(m:220)))
        
        print(soln.sumCells(cells:soln.divisors(m:496)))
        //Here I found some amicable numbers equal themselves which is disallowed a!=b so removed these and got correct answer
        //correctly gives 284
        
    }
    
    
    func testRunTest() {
        var amount = Set<Int>()
        soln.allofthem()
        for x in 2...9999 {
            if (soln.dictNumbers[soln.dictNumbers[x]!] == x) && (soln.dictNumbers[x]! != x) {
                amount.insert(x)
                amount.insert(soln.dictNumbers[x]!)
            }
        }
        print(amount)
        var total = 0
        for x in amount {
            total += x
        }
        print("The total is ",total)
    }
    /*
     [2620, 220, 2924, 284, 6368, 5020, 6232, 1184, 5564, 1210]
     The total is  31626
     Test Case
     */
    
}
