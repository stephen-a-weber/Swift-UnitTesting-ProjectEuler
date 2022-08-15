//
//  E20Tests.swift
//  E20Tests
//
//  Created by stephen weber on 8/14/22.
//

import XCTest
@testable import E20

class E20Tests: XCTestCase {
    var soln : FactorialSum!
    override func setUpWithError() throws {
        
        soln = FactorialSum()
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
    func testmultiple2() {
        
        XCTAssertEqual(soln.multiply(x: 0, y: 0), "0")
    }
    
    func testM(){
       print( soln.multiply(x: 3, y: 3))
        XCTAssertEqual(soln.multByN(n:3),"27")
    }
    
    
    func testfactorialRun() {
        XCTAssertEqual(soln.factRun(n:-1),"NOTHING")
        XCTAssertEqual(soln.factRun(n:0),"NOTHING")
        XCTAssertEqual(soln.factRun(n:1),"1")
        XCTAssertEqual(soln.factRun(n:2),"2")
        XCTAssertEqual(soln.factRun(n:3),"6")
        XCTAssertEqual(soln.r,[6])
        
        XCTAssertEqual(soln.factRun(n:4),"24")
         
         XCTAssertEqual(soln.factRun(n:5),"120")
        XCTAssertEqual(soln.factRun(n:10),"3628800")
        XCTAssertEqual(soln.factRun(n:100),"3628800")
        
        // here I erred in logic as the assumption was one digit
        // multiplide by another single digit
        // as number got above 10 the carry amount et al was
        // wrong
        // so found algorithm to multiply two numbers
        // similarly large numbers digit to digit
        ///called mult
    }
    func testtest() {
       print(soln.mult(left:"1923",right:"1934"))
    }
    
    func testrun() {
        let a = soln.running(n:100)
         print(a)
        var b = a.reversed().map { Int(String($0))! }
        print(b)
      var count = 0
        for i in b {
            count += i


        }

        print("Total of factorial digits is ",count)
//prints 648 which is correct
    }
    
    
}
