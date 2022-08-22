//
//  E25Tests.swift
//  E25Tests
//
//  Created by stephen weber on 8/18/22.
//

import XCTest
@testable import E25

class E25Tests: XCTestCase {
    var soln: Fibs!
    override func setUpWithError() throws {
        soln = Fibs()
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
    
    func testCreateBigIntegerStrings() {
        
        XCTAssertEqual( soln.adding(a: "12345",b:"12345"),"24690")
        XCTAssertEqual( soln.adding(a: "12",b:"345"),"357")
        XCTAssertEqual( soln.adding(a: "345",b:"12"),"357")
        XCTAssertEqual( soln.adding(a: "5",b:"8"),"13")
    }
    
    
    func testcreateFibGrowth() {
        XCTAssertEqual( soln.FibList[0],"0")
        XCTAssertEqual( soln.FibList[1],"1")
        XCTAssertEqual( soln.FibList[2],"1")
        
        while(soln.CurrentLength) < 1000 {
            soln.increaseFibNumbers()
            
                //print(soln.CurrentLength)
                //  print(soln.FibIndex)
                //  print(soln.FibList[soln.FibIndex])
        }
            // soln.increaseFibNumbers()
        
        print(soln.CurrentLength)
        print(soln.FibIndex)      //<<<<---Answer!!!
        print(soln.FibList[soln.FibIndex])
        
        /*000
         4782 <<<<<-----Answer!
         1070066266382758936764980584457396885083683896632151665013235203375314520604694040621889147582489792657804694888177591957484336466672569959512996030461262748092482186144069433051234774442750273781753087579391666192149259186759553966422837148943113074699503439547001985432609723067290192870526447243726117715821825548491120525013201478612965931381792235559657452039506137551467837543229119602129934048260706175397706847068202895486902666185435124521900369480641357447470911707619766945691070098024393439617474103736912503231365532164773697023167755051595173518460579954919410967778373229665796581646513903488154256310184224190259846088000110186255550245493937113651657039447629584714548523425950428582425306083544435428212611008992863795048006894330309773217834864543113205765659868456288616808718693835297350643986297640660000723562917905207051164077614812491885830945940566688339109350944456576357666151619317753792891661581327159616877487983821820492520348473874384736771934512787029218636250627816*/
        
        
        
    }
    
    
    
    
    
}
