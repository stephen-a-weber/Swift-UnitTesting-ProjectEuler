//
//  E14Tests.swift
//  E14Tests
//
//  Created by stephen weber on 5/4/22.
//

import XCTest
@testable import E14

class E14Tests: XCTestCase {
    var collatz : Collatz!
    override func setUpWithError() throws {
        
        collatz = Collatz()
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

    
    func testarray() {
        print(collatz.sieve.count)
        print(collatz.possible.count)
    }

    func testCollatzodd() {
        XCTAssertEqual(collatz.EvenReverseCollatz(14),7)
        XCTAssertEqual(collatz.OddReverseCollatz(15),46)
    }
    
    
    func testChain() {
         collatz.chain(8)
        
        XCTAssertEqual(collatz.theList[8],4)
    }
    
    func testAllChain() {
        for i in 1...100000000 {
            collatz.chain(i)
        }
        print(collatz.maxCount)
        print(collatz.maxInt)
        /*
         525
         837799
         */
        //took 1.421 seconds without memorizing data
        /*
         686
         8400511
         14.075
         */
        /*
         3GB
         100000000
         950
         63728127
         162.230 secs
         without any dictionary 30mb total mem. 128 sec
         */
    }
    
    func testMEmeorizationSolution() {
        ..not helpful
        
        for i in 1...100000000 {
            collatz.chain(i)
        }
        print(collatz.maxCount)
        print(collatz.maxInt)
        /*
         525
         837799 at 1.44 sec
         */
        
        /*
         5000000
         597
         3732423 at 6.852 sec
         */
            /*
             686
             8400511
             14.083
             */
        /*
         100000000
         950
         63728127
         161.637
         3Gb
         */
//        collatz.theSolution(13)
//        print(collatz.theList[13] ?? 999)
//        print(collatz.maxCount)
//        print(collatz.maxInt)
       // XCTAssertEqual(collatz.theSolution(12),collatz.theList[12] )
//        XCTAssertEqual(collatz.theSolution(2),2)
//        XCTAssertEqual(collatz.theSolution(4),3)
//    //    XCTAssertEqual(collatz.theSolution(1000000),837799)
      //  XCTAssertEqual(collatz.theSolution(1000000),837799)
    }
    
    func testRevatureSuits() {
        XCTAssertEqual(collatz.revatureSuits(10,2),19)
        XCTAssertEqual(collatz.revatureSuits(3,0),3)
        
    }
}
