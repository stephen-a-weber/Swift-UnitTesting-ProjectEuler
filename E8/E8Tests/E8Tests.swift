//
//  E8Tests.swift
//  E8Tests
//
//  Created by stephen weber on 4/30/22.
//

import XCTest
@testable import E8

class E8Tests: XCTestCase {
    var number : Number!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        number = Number()
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

    func testSubString() {//start and end of string with subString
        XCTAssertEqual(number.subString(start:0,13),"7316717653133")
        XCTAssertEqual(number.subString(start:987,13),"0420752963450")
    }
    
    func testSub4String() {
        XCTAssertEqual(number.subString(start:0,4),"7316")
        print(number.subString(start:996,4),"3450")

    }
    
    func testConvertStringIntegerToBinaryHash(){
        print("tber ",number.hash("000"))
        XCTAssertEqual(number.hash("111"), 6)
        XCTAssertEqual(number.hash("333"), 24)
         XCTAssertEqual(number.hash("000"), 0)
        XCTAssertEqual(number.hash("222"), 12)
    }

    func testInputAll13LetterNumberWordsIntoHash() {
        number.run()
        print(number.maxArray.count)
        XCTAssertEqual(number.maxArray.count,988)
        
        
    }
    func testSolution() {
       print( number.run2())
        print("the word number is ",number.bestString)
        //print("The answer is ",number.solution())
     //   number.run()
     //   let g = number.maxArray.max()!
     //   print(number.ArrayDict[g])
            //Optional("8399879790879")
        /*
         ///////
         ////
         I got here thinking that it would be best
         to group each set of 13 and apply a hash to
         each setting each so that the hash was higher
         by powers of 2 . And I see I was thinking badly
         It worked. I learnt some << bit shifting.
         I imagined the count of each would fit. But I was
         still thinking in base 10
         where in base 2 the numbers do not rise as fast
         as in base 10. 2^5 = 2*2*2*2*2 = 32
         so 2 fives = 64
         
         ok that works as 5*5 = 25
         but 3 fives = 96
         but 5*5*5 = 125 .
         
         Just I know it didn't work and here is a possible why?
         
         So the hard part in swift is converting a string to an array
         which is func substring it is nice
         then I can just convert each of these strings to char array
         and int them . I could speed it up thinking along the
         line of reduce (* ,1).
         But here is the answer.
         */
        
        
    //    23514624000
        //the word number is  5576689664895 third row down on end.
    }
    
}
