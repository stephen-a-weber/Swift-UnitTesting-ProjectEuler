//
//  E19Tests.swift
//  E19Tests
//
//  Created by stephen weber on 8/13/22.
//

import XCTest
@testable import E19

class E19Tests: XCTestCase {
    var soln : CountCalendar!
    override func setUpWithError() throws {
        
        soln = CountCalendar()
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
 
    
    func testAllDays() {
        
        XCTAssertEqual(soln.throughDays(), 0)
//        print(soln.throughDays())
//        for x in 1...31 {
//            print(x,soln.dictDayOfWeek[x])
//            print()
//
//        }
//        print()
//        print(soln.dictDayOfWeek[1])
        print()
        print("THe number of Sundays in this range of years that start on the first of the month is ",soln.countdays(a: soln.dictDayOfWeek[1]!))
        print()
        print()
   }
    //prints answer of 171
    func testOutlaiers() {
        XCTAssertNil(soln.dictDayOfWeek[0])
        //print(soln.dictDayOfWeek[0])
    }
}
