//
//  E18Tests.swift
//  E18Tests
//
//  Created by stephen weber on 8/12/22.
//

import XCTest
@testable import E18

class E18Tests: XCTestCase {
    var soln : MaximumPathSum!
    override func setUpWithError() throws {
        
        
        soln = MaximumPathSum()
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

    func testentrydata() {
        XCTAssertEqual(soln.hi[0].count , 1)
        for i in 0...14 {
            XCTAssertEqual(soln.hi[i].count, i+1)
            print(soln.hi[i],soln.hi[i].count,i+1)
        }
        
        XCTAssertEqual(soln.hi[0][0],75)
        XCTAssertEqual(soln.hi[3][0],18)
    }
    
    func testSolve() {
        
        soln.Solve()
        for i in 0...14 {
            print(soln.hi[i])
        }
        print("the answer is ",soln.hi[0][0])
    }

    
    
    
}
