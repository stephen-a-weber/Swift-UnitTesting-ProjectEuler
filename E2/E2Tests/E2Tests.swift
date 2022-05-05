//
//  E2Tests.swift
//  E2Tests
//
//  Created by stephen weber on 4/24/22.
//

import XCTest
@testable import E2

class E2Tests: XCTestCase {

    override func setUpWithError() throws {
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

    func testsetupClass() {
        let fib = Fib(n: 0)
        XCTAssert(fib.solution() == 0)
        XCTAssert(fib.fib(0) == 0)
        XCTAssert(fib.fib(1) == 1)
        XCTAssert(fib.fib(2) == 1)
        XCTAssert(fib.fib(3) == 2)
        XCTAssert(fib.fib(4) == 3)
        XCTAssert(fib.fib(5) == 5)
        XCTAssert(fib.fib(6) == 8)
        
        for x in  0...35 {
            let y = fib.fib(x)
            print(x,y)}
            XCTAssert(fib.fib(34)>4000000)
            XCTAssert(fib.fib(33)<4000000)
         
        
        
    }
    func testFast() {
        let fib = Fib(n:32)
        XCTAssert(fib.n == 32)
             print(fib.solution())
    }
    
    
    func testSlowprint() {
     
        let fib = Fib()
       var t=[Int]()
        for i  in 0..<35{
           // let fib = Fib(n:i)
            let g = fib.fib(i)
            t.append(g)
            
        }
      //  print(t)
  
    }
    func testFastprint() {
       
        let fib = Fib()
        var t=[Int]()
        for i  in 0..<35 {
                // let fib = Fib(n:i)
            let g = fib.fib(i)
            t.append(g)
            
        }
        print(t)
  
    }
    
    func testn() {
        let test = 33
        let fib = Fib(n:test)
        print(fib.fib(test))
        print(fib.solution())
        print("with \(test) cases : \(fib.container)")
        }
    // 1 1 2 3 5 8 13 21
//3-2,

    func testPracticalAnswerForEvenFibsUpTofourMillion() {
        let fib = Fib(n:33)
        _ = fib.solution()
        let fibArray = fib.container
        XCTAssertNotNil(fibArray.max())
        XCTAssert(fibArray.max()!<4000000)
        
        let fibEvenArray = fib.getEvens(array: fibArray)
        XCTAssertEqual(fibArray.filter{$0%2==0},fibEvenArray)
        print(fibArray)
        print(fibArray.filter { $0 % 2 == 0})
        XCTAssertFalse(fibEvenArray.contains(1))
       
        print("The answer of even fibs summed to 4000000 is \(fibEvenArray.reduce(0,+))")
    }
}
