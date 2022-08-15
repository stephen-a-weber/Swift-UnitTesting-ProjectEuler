//
//  E17Tests.swift
//  E17Tests
//
//  Created by stephen weber on 6/21/22.
//

import XCTest
@testable import E17

class E17Tests: XCTestCase {
    var soln : Solution!
    override func setUpWithError() throws {
        soln = Solution()
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

    func testmake(){
        soln.makeNumberWord()
        var amount = 0
        for (a,b) in soln.count  {
            if a != " " && a != "-" {
                amount += b
            }
            // add for "and"
            // 101-199
            // 201-299
            // 99 * 9 * 3
            
        }
        amount += 99 * 9 * 3
        print ("total = ",amount)
    }

}
/*
 
 
 Number letter counts
  
 Problem 17
 If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
 
 If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
 
 
 NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
 
 
 Answer:  21124
 Completed on Wed, 23 Jan 2013, 17:22
 */
