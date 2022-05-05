//
//  E7Tests.swift
//  E7Tests
//
//  Created by stephen weber on 4/30/22.
//

import XCTest
@testable import E7

class E7Tests: XCTestCase {
    var prime : Prime!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        prime = Prime()
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
    func testCreatePrimes() {
        XCTAssertEqual(prime.collection(1),[])
        XCTAssertEqual(prime.collection(2),[2])
        XCTAssertEqual(prime.collection(3),[2,3])
        XCTAssertEqual(prime.collection(4),[2,3])
        XCTAssertEqual(prime.collection(5),[2,3,5])
        XCTAssertEqual(prime.collection(10),[2,3,5,7])
        XCTAssertEqual(prime.collection(20),[2,3,5,7,11,13,17,19])
        
        
        
        
    }
    func testfind6thPrime(){
        let gee = prime.collection(100)
        let n = 6
        XCTAssertTrue(gee.count>6)
        XCTAssertEqual(gee[n-1],13)
    }
    
    func testBinarySearchtoFind10001value() {
   
        
        
    }
    
    
    
    func testfind10001stthPrime(){
        let gee = prime.collection(104745)
        let n = 10001
        print(gee[n-1])
        print("THE SOLUTION of what is the 10001st Prime is \(gee[n-1])")
        XCTAssertTrue(gee.count>=10001)
        XCTAssertEqual(gee[n-1],104743)
    }
    func testFindArraythatContains10001Prime() {
        let p = prime.ValueOfArrayToNthPrime()
        print("Array has this many elements :\(p)")
    }
}
