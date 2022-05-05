//
//  E16Tests.swift
//  E16Tests
//
//  Created by stephen weber on 5/4/22.
//

import XCTest
@testable import E16

class E16Tests: XCTestCase {
    var powerDigits : PowerDigits!
    override func setUpWithError() throws {
        powerDigits = PowerDigits()
        
        
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

    func testMakeArrayfrominteger() {
        
        powerDigits.makeAnswer(n:43)
        XCTAssertEqual(powerDigits.answer,"43")
    }
    
    func testSumString() {
        XCTAssertEqual(powerDigits.sumString("12345"),15)
    }
    
    func testTurnIntToCharArray() {
        XCTAssertEqual(powerDigits.intToArray(12345),["5","4","3","2","1"]) // I know it is reversed
        
    }
    func testMultString() {
        
        XCTAssertEqual(powerDigits.multString(str:["1","2"]),["2","4"])
        XCTAssertEqual(powerDigits.multString(str:["1","7"]),["3","4"])
        XCTAssertEqual(powerDigits.multString(str:["7","2"]),["1" ,"4", "4"])
        XCTAssertEqual(powerDigits.multString(str:["7","9","9"]),["1","5","9","8"])
        
        XCTAssertEqual(powerDigits.multString(str:["2"]),["4"])
        XCTAssertEqual(powerDigits.multString(str:["1","6"]),["3","2"])
        XCTAssertEqual(powerDigits.multString(str:powerDigits.multString(str:["1","6"])),["6","4"])
    }
    
    func testSolution() {
        
        XCTAssertEqual(powerDigits.solution(n:3),8)
        XCTAssertEqual(powerDigits.solution(n:15),26)
         XCTAssertEqual(powerDigits.solution(n:1000),1366)
    }// sum of digits of 2 to the power of n 2**1000 sum digits = 1366
}
