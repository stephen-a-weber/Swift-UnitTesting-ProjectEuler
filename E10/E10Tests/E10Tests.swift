//
//  E10Tests.swift
//  E10Tests
//
//  Created by stephen weber on 5/1/22.
//

import XCTest
@testable import E10

class E10Tests: XCTestCase {
     var  primes : Primes!
    override func setUpWithError() throws {
        primes = Primes()
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
 
    func testListPrimes() {
        
        XCTAssertEqual(primes.primes(1),[])
        XCTAssertEqual(primes.primes(2),[2])
        XCTAssertEqual(primes.primes(3),[2,3])
        XCTAssertEqual(primes.primes(4),[2,3])
        XCTAssertEqual(primes.primes(5),[2,3,5])
        XCTAssertEqual(primes.primes(20),[2,3,5,7,11,13,17,19])
    }
    
    func test2millionprimesbelow(){
        let y = primes.primes(2000000)
        
        print (y.reduce(0,+)) //142913828922
    }
}
