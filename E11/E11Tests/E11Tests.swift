//
//  E11Tests.swift
//  E11Tests
//
//  Created by stephen weber on 5/1/22.
//

import XCTest
@testable import E11

class E11Tests: XCTestCase {
    var grid : Grid!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        grid = Grid()
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

    func testsetUpNumberGrid() {
        
        var input = grid.inputString
        var weird = input.components(separatedBy: " ")
//        for i in weird {
//            print(i)
//        }// this works
        
//        print(weird.count) // this is 400 20*20 =400 cool
        
        XCTAssertEqual(weird.count,400)
      
        
       let _ = grid.makeGrid()
        let myGrid = grid.myGrid
        XCTAssertEqual(myGrid[0][0],8)
        XCTAssertEqual(myGrid[1][0],49)
        XCTAssertEqual(myGrid[19][0],1)
        XCTAssertEqual(myGrid[0][19],8)
        XCTAssertEqual(myGrid[1][19],0)
        XCTAssertEqual(myGrid[19][19],48)
        XCTAssertEqual(myGrid[19][18],67)
        XCTAssertEqual(myGrid[19][17],19)
        XCTAssertEqual(myGrid[19][16],89)
    }
    
    func testNEXTHorizontalPositive() {
        let _ = grid.makeGrid()
       print(grid.gridRight(row:0,col:18))
        XCTAssertEqual(grid.gridRight(row:0,col:18),[91,8,8,2])
    }
    func testNEXTHorizontalNegative() {
        let _ = grid.makeGrid()
        print(grid.gridLeft(row:0,col:1))
        XCTAssertEqual(grid.gridLeft(row:0,col:1),[2,8,8,91])
    }
    
    func testNEXTVerticalUp() {
        let _ = grid.makeGrid()
        print(grid.gridUp(row:1,col:1))
        XCTAssertEqual(grid.gridUp(row:1,col:1),[49,2,70,73])
    }
    func testNEXTVerticalDown() {
        let _ = grid.makeGrid()
        print(grid.gridDown(row:18,col:1))
        XCTAssertEqual(grid.gridDown(row:18,col:1),[73,70,2,49])
    }
    
    func testpoint() {
        let _ = grid.makeGrid()
        XCTAssertEqual(grid.myGrid[19][2],54)//Row then column
    }
    
    func testDiagonalUpRight() {
        let _ = grid.makeGrid()
        print(grid.gridUpRight(row:1,col:18))
        XCTAssertEqual(grid.gridUpRight(row:1,col:18),[62,8,1,73])
    }
    func testDiagonalDownRight() {
        let _ = grid.makeGrid()
        print(grid.gridDownRight(row:18,col:18))
        XCTAssertEqual(grid.gridDownRight(row:18,col:18),[5,48,8,49])
    }
    func testDiagonalDownLeft() {
        let _ = grid.makeGrid()
        print(grid.gridDownLeft(row:18,col:1))
        
        let y = grid.gridDownLeft(row:18,col:1)
        print(y.max()!)
        XCTAssertEqual(grid.gridDownLeft(row:18,col:1),[73,1,8,62])
    }
    func testgetMaxFromLocation() {
        let _ = grid.makeGrid()
        let maximum = grid.getLocationMax(row:10,col:10)
        print(maximum)
    }
     
    func testSolution() {
        
        let _ = grid.makeGrid()
        print(grid.getSolution())  //70600674
    }
}
