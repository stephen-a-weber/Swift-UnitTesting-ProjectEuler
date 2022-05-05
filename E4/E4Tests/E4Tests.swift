//
//  E4Tests.swift
//  E4Tests
//
//  Created by stephen weber on 4/30/22.
//

import XCTest
@testable import E4

class E4Tests: XCTestCase {
    var pal :        PalindromicNumber!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        pal = PalindromicNumber()
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

    func testCheckPalindromicTrue() {
        var y = "123321"
        XCTAssertTrue(pal.check(y))
        y = "1231234321321"
        XCTAssertTrue(pal.check(y))
      y = "818"
        XCTAssertTrue(pal.check(y))
        
    }
    
    func testCheckPalindromicFalse() {
        var y = "133221"
        XCTAssertFalse(pal.check(y))
        y = "10"
        XCTAssertFalse(pal.check(y))
        y = "1"
        XCTAssertFalse(pal.check(y))
        y = "10302"
        XCTAssertFalse(pal.check(y))
    }
    
    func testBuildingthreedigitnumbers() {
        let num = pal.number()
        let size = Array(String(num)).count
        XCTAssertTrue(size == 3)
    }
    
    func testSolution(){
        let solution = pal.trial()
        print("the answer is")
        print(solution)
        print(pal.AnswerDict[solution])
        
    }
}
