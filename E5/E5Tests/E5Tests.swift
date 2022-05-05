//
//  E5Tests.swift
//  E5Tests
//
//  Created by stephen weber on 4/30/22.
//

import XCTest
@testable import E5

class E5Tests: XCTestCase {
    var multiple : Multiple!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        multiple = Multiple()
        
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
 
    func testFactors() {
        XCTAssertEqual(multiple.factors(1),[:])
        XCTAssertEqual(multiple.factors(2),[2:1])
        XCTAssertEqual(multiple.factors(3),[3:1])
        XCTAssertEqual(multiple.factors(4),[2:2])
        XCTAssertEqual(multiple.factors(5),[5:1])
        XCTAssertEqual(multiple.factors(6),[2:1,3:1])
        XCTAssertEqual(multiple.factors(7),[7:1])
        XCTAssertEqual(multiple.factors(8),[2:3])
        XCTAssertEqual(multiple.factors(9),[3:2])
        XCTAssertEqual(multiple.factors(10),[2:1,5:1])
        XCTAssertEqual(multiple.factors(11),[11:1])
        
    }
    
    func testaddFactorsToStorage() {
       
        let y = multiple.factors(2*5*7)
        XCTAssertEqual(y,[2:1,5:1,7:1])
        multiple.addFactorsToStorage(y)
        XCTAssertEqual(multiple.Storage , y)
        
        let g = multiple.factors(3*5*5*4)
        XCTAssertEqual(g,[2:2,3:1,5:2])
        multiple.addFactorsToStorage(g)
        XCTAssertEqual(multiple.Storage,[2:2,3:1,5:2,7:1])
        
        
        }
    
    
    
    func testPrintAnswer() {
       print("The answer is \( multiple.Brute())")
        XCTAssertEqual(1,multiple.Brute())
    }
    
    func testtwonumbersToAnswer(){
        let g = multiple.factors(10)
        multiple.addFactorsToStorage(g)
        let h = multiple.factors(21)
        multiple.addFactorsToStorage(h)
        XCTAssertEqual(210,multiple.Brute())
        
    }
    
    func test1to10ToAnswer(){
     XCTAssertEqual(multiple.multiToN(10),2520)
    }
    
    func testTheSolution(){
        
        print("The solution is \(multiple.multiToN(20))")
        //232792560
    }
    func test100(){
        print("The solution to 30 is \(multiple.multiToN(30))")
     //   The solution to 100 is 2329089562800
    }
}
