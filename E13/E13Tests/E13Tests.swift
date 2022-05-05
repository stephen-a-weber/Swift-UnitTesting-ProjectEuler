//
//  E13Tests.swift
//  E13Tests
//
//  Created by stephen weber on 5/3/22.
//

import XCTest
@testable import E13

class E13Tests: XCTestCase {
    var numbers : Numbers!
    override func setUpWithError() throws {
        numbers = Numbers()
        numbers.makeCharArrays()
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

    
    
    func testGetNumbers() {
//        var trial = numbers.number
//        var all = trial.components(separatedBy: "\n")
//        print(all.count)
//
//       numbers.makeCharArrays()
        XCTAssertEqual(numbers.total.count,100)
    }
    
    func testaddcolumn(){
       var count = 49
       var H = 0
        for x in stride(from: 49, through: 0, by: -1) {
        
        for i in numbers.total {
            
            H += Int(String(i[x]))!
            print(i[count],":",H)
            
        }
        print (H)
            let tell = numbers.getLastDigit(H)
            numbers.answer.append(tell.0)


            H = tell.1
        }
        numbers.answer.append(String(H))
        print(numbers.answer)
       var poppy =  [String]()
        for i in stride(from:numbers.answer.count-1,through: 0 ,by:-1) {
            poppy.append(numbers.answer[i])
        }
        print(poppy)
        var L = ""
        for i in Array(poppy) {
            L += String(i)
        }
        print(L)
       var turtle = ""
        var year = Array(L)
        for i in 0..<10 {
            turtle += String(year[i])
            
        }
        print(turtle)
        
        /*
         The answer here
         
         5537376230390876637302048746832985971773659831892672
         5537376230  <-ten digits
         */
    }

    func testGetLastDigit() {
        
        
        XCTAssertEqual(numbers.getLastDigit(435).0,"5")
        XCTAssertEqual(numbers.getLastDigit(435).1,43)
}
}
