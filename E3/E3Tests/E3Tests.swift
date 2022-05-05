//
//  E3Tests.swift
//  E3Tests
//
//  Created by stephen weber on 4/30/22.
//

import XCTest
@testable import E3

class E3Tests: XCTestCase {
    var primes : Primes!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        primes = E3.Primes()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   
    
    
 
    
    func testPrimeFactors() {
        
        XCTAssertEqual(primes.factors(0),[])
        XCTAssertEqual(primes.factors(1),[])
        XCTAssertEqual(primes.factors(2),[2])
        XCTAssertEqual(primes.factors(3),[3])
        XCTAssertEqual(primes.factors(4),[2,2])
        XCTAssertEqual(primes.factors(5),[5])
        XCTAssertEqual(primes.factors(6),[2,3])
        XCTAssertEqual(primes.factors(7),[7])
        XCTAssertEqual(primes.factors(8),[2,2,2])
        XCTAssertEqual(primes.factors(9),[3,3])
        
        XCTAssertEqual(primes.factors(13195),[5,7,13,29])
        XCTAssertEqual(primes.factors(600851475143),[71, 839, 1471, 6857])
    }
    
    
    

}
