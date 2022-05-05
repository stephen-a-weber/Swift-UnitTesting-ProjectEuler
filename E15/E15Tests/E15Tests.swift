//
//  E15Tests.swift
//  E15Tests
//
//  Created by stephen weber on 5/4/22.
//

import XCTest
@testable import E15

class E15Tests: XCTestCase {
    var paths : Paths!
    override func setUpWithError() throws {
        
        paths = Paths()
        
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
 
    func testPaths() {
        let g = paths.ways(sides: 1)
        XCTAssertEqual(paths.ways(sides:1),2)
        XCTAssertEqual(paths.ways(sides:2),6)
        XCTAssertEqual(paths.ways(sides:20),137846528820)
    }
    //setup of all path algorithm
    // learned a quick way to set up multidimensional arrays with repeating and count
    // remembering to go from nodes or points or sides of two meant three setting all zero points horizontally
    // vertically at 1
    // summing walk paths from top and left
}
