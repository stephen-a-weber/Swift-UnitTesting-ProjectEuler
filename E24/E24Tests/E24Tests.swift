//
//  E24Tests.swift
//  E24Tests
//
//  Created by stephen weber on 8/15/22.
//

import XCTest
@testable import E24

class E24Tests: XCTestCase {
    var soln: Perms!
    override func setUpWithError() throws {
        
        
        soln = Perms()
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

    func testFactorialValues() {
        print(soln.factorial(9))
        print(2*362880 + 1)
        
        print(725762+241926)

    }
}
