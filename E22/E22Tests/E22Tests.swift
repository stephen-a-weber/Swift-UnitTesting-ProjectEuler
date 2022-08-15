//
//  E22Tests.swift
//  E22Tests
//
//  Created by stephen weber on 8/15/22.
//
 
import XCTest
@testable import E22
 
class E22Tests: XCTestCase {
    var soln : TextFile!
    override func setUpWithError() throws {
       soln = TextFile()
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
    
    
    func testLoadingTextFile() {
        soln.reading()
        //puts all words in names.txt into
       // string arrray allNames[]
        //  print(allNames.count)
       //   print(allNames[9])
    }

    func testsortingNames() {
        soln.reading()
            //puts words into array allNames
        soln.allNames.sort()
        print(soln.allNames)
        //does sort list
    }
    
    func testwhatisfunctionalphabettonumbers() {
       XCTAssertEqual(Character("A").asciiValue! - 64 ,1   )
        let r = Array("ABC")[1]
        print(r,r.asciiValue! - 64)
    }
    
    func testAnswer() {
        soln.Solution()
        print("The answer is ",soln.total)
        //The answer is  871198282
    }
    /*
     
     I ran into an error for awhile. It turns into
     a problem reading the file
     it kept a quote mark to the first and last word
     then as it sorted it made colin the 939th or it looked wierd like they started word count at zero index
     so i went through and hard checked each word for quotes removed them if existed and then sorted this new list
     this provided the correct solution.
     
     memory. It was right there at the begining take the most obvious solution. another example of moving more towards TDD or mnemonic for test driven development write check write code for any error. I should have checked each word originally..
     */
    func testColin() {
        soln.reading()
        
        print(soln.allNames.count)
        soln.singleWordCount(n: 938)
    }
    
    
    func testorderingforcolin938() {
        soln.reading()
        for (a,b) in soln.allNames.enumerated() {
            print("\(a): '\(b)'")
        }
    }
    
    
    func testagainparsingfile(){
         soln.reading() 
    }
}
