    //
    //  E1Tests.swift
    //  E1Tests
    //
    //  Created by stephen weber on 4/23/22.
    //

import XCTest
@testable import E1

class E1Tests: XCTestCase {
    var euler : E!
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
    
    func testFindSum3_5_Input() {
        let limit = 100
        let multiples = [0]
        let euler = E(multiples: multiples ,limit: limit)
        XCTAssertEqual(euler.limit == 100, true)
        XCTAssert( euler.multiples == multiples)
        
    }
    func testFindSMzero() {
        let euler = E(multiples:[0], limit: 100)
        let answer = euler.solution()
        XCTAssert(answer == 0)
        
    }
    func testFindSMone() {
        let euler = E(multiples:[1], limit: 100)
        let answer = euler.solution()
        print ("the answer:",answer)
        XCTAssert(answer == 5050)
    }
    
    func testFindSM5() {
        let euler = E(multiples:[5], limit: 100)
        let answer = euler.solution()
        XCTAssert(answer == 1050)
    }
    
    func testFindSMforTwo3_5() {
        let euler = E(multiples: [3,5], limit: 100)
        XCTAssert(euler.sumMult(A:3) == 1683)
        XCTAssert(euler.sumMult(A:5) == 1050)
        XCTAssert(euler.sumMult(A: 15) == 315)
        let q = 1683 + 1050 - 315
        XCTAssertEqual(euler.solution() , q)
    }
    
    func testsumMultwithOneParameter() {
        for _ in 0...200 {
            let a = Int.random(in: 1...30)
            
            let limit = Int.random(in:1000...5000)
            var z = Set<Int>()
            for i in stride(from: 0, through: limit, by: a) {
                z.insert(i)
            }
            
            let r = z.reduce(0, { x, y in
                x + y})
            let euler = E(multiples: [a], limit: limit)
            let answer = euler.sumMult(A:a)
            XCTAssertEqual(r,answer)
        }
    }
    
    func testRemoveduplicateFactors(){
        let euler = E(multiples: [2,2,2,2,4], limit: 50)
        let y = euler.removeMultiples(a: euler.multiples)
        print("here is y", y)
        XCTAssertEqual(y, [2])
        
        let euler2 = E(multiples: [2,4,8,10,3,9], limit: 50)
        var k = euler2.removeMultiples(a: euler2.multiples)
        k.sort()
        print("Here is K",k)
        XCTAssertEqual(k, [2,3])
        
    }
    
    
    func testBruteForcewithSetsandTwoMult(){
        
        
        for _ in 0...200 {
            var z = Set<Int>()
            let a = Int.random(in: 1...30)
            let b = Int.random(in:1...30)
            let limit = Int.random(in:1000...5000)
            for i in stride(from: 0, through: limit, by: a)
            {z.insert(i)}
            for j in stride(from: 0, through: limit, by: b)
            {z.insert(j)}
            let r = z.reduce(0, +)
            
            let euler = E(multiples: [a,b], limit: limit)
            
            XCTAssertEqual(euler.solution(),r)
            
            
            
            
        }
    }
    
    
    func testEulerTest1() {
        let A = [3,5]
        let limit = 999
        let euler = E(multiples: A, limit: limit)
        XCTAssertEqual(euler.solution(),233168)
    }
    
    func testThreeMutipliersSimple() {
        let euler = E(multiples: [2,3,5], limit:30)
        print ("there is this 3test at,", euler.solution())
        XCTAssertEqual( euler.solution(),345)//known value
    }
    
    func testThreeMutipliersSimple2() {
        let euler = E(multiples: [9,6,15], limit:300)
        print ("there is this 3test at,", euler.solution())
        XCTAssertEqual( euler.solution(),11346)//known value
    }
    
    func testThreeMutipliersSimple3() {
        let euler = E(multiples: [9,6,17], limit:300)
        print ("there is this 3test at,", euler.solution())
        XCTAssertEqual( euler.solution(),12393)//known value
    }
    
    
    func testThreeBulkrate() {
        for _ in 0...200 {
            let a = Int.random(in: 1...30)
            let b = Int.random(in:1...30)
            let c = Int.random(in:1...30)
            
            let limit = Int.random(in:1000...5000)
            
            var z = Set<Int>()
            for i in stride(from: 0, through: limit, by: a) {
                z.insert(i)
            }
            for i in stride(from: 0, through: limit, by: b) {
                z.insert(i)
            }
            for i in stride(from: 0, through: limit, by: c) {
                z.insert(i)
            }
            let answer = z.reduce(0,+)
            print("Three expected answer:", answer)
            let euler = E(multiples: [a,b,c], limit: limit)
            XCTAssertEqual(euler.solution(),answer)
        }
    }
    
    
    
        //    func testPerformanceExample() throws {
        //        // This is an example of a performance test case.
        //        self.measure {
        //            // Put the code you want to measure the time of here.
        //        }
        //    }
    
    func testThreecheck() {
        
        let a = 9
        let b = 6
        let c = 15
        
        let limit = 300
        
        var z = Set<Int>()
        for i in stride(from: 0, through: limit, by: a) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: b) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: c) {
            z.insert(i)
        }
        let answer = z.reduce(0,+)
        print("Three expected answer:", answer)
        let euler = E(multiples: [a,b,c], limit: limit)
        XCTAssertEqual(euler.solution(),answer)
        
    }
    
    func testfourrate() {
        
        let a = 9
        let b = 6
        let c = 17
        let d = 10
        
        let limit = 300
        
        var z = Set<Int>()
        for i in stride(from: 0, through: limit, by: a) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: b) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: c) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: d) {
            z.insert(i)
        }
        let answer = z.reduce(0,+)
        print("Four expected answer:", answer)
        let euler = E(multiples: [a,b,c,d], limit: limit)
        XCTAssertEqual(euler.soln(),answer)
        
    }
    
    func test4simple() {
        
        
        let a = 2
        let b = 3
        let c = 5
        let d = 7
        
        let limit = 210
        
        var z = Set<Int>()
        for i in stride(from: 0, through: limit, by: a) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: b) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: c) {
            z.insert(i)
        }
        for i in stride(from: 0, through: limit, by: d) {
            z.insert(i)
        }
        let answer = z.reduce(0,+)
        print("Four expected answer:", answer)
        let euler = E(multiples: [a,b,c,d], limit: limit)
        XCTAssertEqual(euler.soln(),answer)
        
        
    }
    
    
    
    func testFourMoreBulkrate() {
        for _ in 0...200 {
            let a = Int.random(in: 1...30)
            let b = Int.random(in:1...30)
            let c = Int.random(in:1...30)
            let d = Int.random(in:1...30)
            
            let limit = Int.random(in:1000...5000)
            
            var z = Set<Int>()
            for i in stride(from: 0, through: limit, by: a) {
                z.insert(i)
            }
            for i in stride(from: 0, through: limit, by: b) {
                z.insert(i)
            }
            for i in stride(from: 0, through: limit, by: c) {
                z.insert(i)
            }
            for i in stride(from: 0, through: limit, by: d) {
                z.insert(i)
            }
            let answer = z.reduce(0,+)
            print("Three expected answer:", answer)
            let euler = E(multiples: [a,b,c,d], limit: limit)
            XCTAssertEqual(euler.soln(),answer)
        }
    }
    
    
    func testmorethanfourBulkrate() {
        for _ in 0...200 {
            let a = Int.random(in: 4...100)
            var f = [Int]()
            for _ in 0...a {
                let b = Int.random(in:1...50)
                f.append(b)
                
            }
            let limit = Int.random(in:1000...5000)
            
            var z = Set<Int>()
            for j in 0...a {
                
                for i in stride(from: 0, through: limit, by: f[j]) {
                    z.insert(i)}
                
            }
            
            let answer = z.reduce(0,+)
            print(" Expected answer: ", answer)
            let euler = E(multiples: f, limit: limit)
            XCTAssertEqual(euler.soln(),answer)
        }
        
        
    }
}
