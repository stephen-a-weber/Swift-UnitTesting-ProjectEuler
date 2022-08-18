//
//  LexPerms.swift
//  E24
//
//  Created by stephen weber on 8/15/22.
//

import Foundation


class Perms :ObservableObject{
    var original = [0,1,2,3,4,5,6,7,8,9]
    @Published var A10 = [1,2,3,4,5,6,7,8,9]
  @Published  var B10 = 0
   @Published var A9 = [Int]()
   @Published var B9 = 1
   @Published var A8 = [Int]()
   @Published var B8 = 2
   @Published var A7 = [Int]()
   @Published var B7 = 3
   @Published var A6 = [Int]()
   @Published var B6 = 4
   @Published var A5 = [Int]()
   @Published var B5 = 5
   @Published var A4 = [Int]()
   @Published var B4 = 6
   @Published var A3 = [Int]()
   @Published var B3 = 7
   @Published var A2 = [Int]()
   @Published var B2 = 8
   @Published var A1 = [Int]()
   @Published var B1 = 9
    @Published var Value10 = 0
    @Published var Value9 = 0
    @Published var Value8 = 0
    @Published var Value7 = 0
    @Published var Value6 = 0
    @Published var Value5 = 0
    @Published var Value4 = 0
    @Published var Value3 = 0
    @Published var Value2 = 0
    @Published var Value1 = 1
    @Published var TotalValue = 0
    
    init() {
        B9 = A10.first!
        A9 = createSubArray(input:A10)
        B8 = A9.first!
        A8 = createSubArray(input:A9)
        B7 = A8.first!
        A7 = createSubArray(input:A8)
        B6 = A7.first!
        A6 = createSubArray(input:A7)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
    }
    func factorial(_ n:Int)->Int {
        if n == 0  {return 0}
        var answer = 1
        for x in 1...n {
            answer *= x
        }
        
        return answer
    }
    
    
    
    func createSubArray(input: [Int])->[Int] {
        var output = [Int]()
        let length = input.count
        for i in 1..<length {
            output.append(input[i])
        }
        
        return output
        
    }
    
    func C10( ) {
         
 
        let t = B10 + 1
        A10 = [] + original[0..<B10] + original[t...]
        
      
     
        Value10 = B10*(factorial(9))
        print("CHECKING FACTORIAL NUMBER IS ",t)
        print("THE VALUE 10 is ", Value10)
        B9 = A10.first!
        A9 = createSubArray(input:A10)
        B8 = A9.first!
        A8 = createSubArray(input:A9)
        B7 = A8.first!
        A7 = createSubArray(input:A8)
        B6 = A7.first!
        A6 = createSubArray(input:A7)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        TotalValue = totaling()
        testTotal()
    }
    func C9() {
   

        let y = A10.firstIndex(of:B9)!
        let t = y + 1
        A9 = [] + A10[0..<y] + A10[t...]
        
      
        Value9 = y*(factorial(8))
        print("CHECKING FACTORIAL NUMBER IS ",y)
        print("THE VALUE 9 is ", Value9)
        print("Total value ", TotalValue)
        B8 = A9.first!
        A8 = createSubArray(input:A9)
        B7 = A8.first!
        A7 = createSubArray(input:A8)
        B6 = A7.first!
        A6 = createSubArray(input:A7)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        TotalValue = totaling()
        testTotal()
    }
    
    
    func C8(){
        
   //     print("got to C8")
        
        let y = A9.firstIndex(of:B8)!
        let t = y + 1
        A8 = [] + A9[0..<y] + A9[t...]
        
    //    print(" time" ,B8,A8)
       
        Value8 = y*(factorial(7) )
        print("CHECKING FACTORIAL NUMBER IS ",y)
        print("THE VALUE 8 is ", Value8)
        print("Total value ", TotalValue)
        B7 = A8.first!
        A7 = createSubArray(input:A8)
        B6 = A7.first!
        A6 = createSubArray(input:A7)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        TotalValue = totaling()
        testTotal()
        
    }
    
    func C7(){
        
      //  print("got to C7")
        
        let y = A8.firstIndex(of:B7)!
        let t = y + 1
        A7 = [] + A8[0..<y] + A8[t...]
        
   //     print(B7,A7)
        Value7 = y*(factorial(6))
        print("CHECKING FACTORIAL NUMBER IS ",y)
        print("THE VALUE 7 is ", Value7)
         
        print("Total value ", TotalValue)
        B6 = A7.first!
        A6 = createSubArray(input:A7)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        TotalValue = totaling()
        testTotal()
        
        
    }
    
    
    func C6(){
        
      //  print("got to C6")
        
        let y = A7.firstIndex(of:B6)!
        let t = y + 1
        A6 = [] + A7[0..<y] + A7[t...]
        
    //    print(B6,A6)
        
        Value6 = y*(factorial(5))
        print("THE VALUE 6 is ", Value6)
        print("Total value ", TotalValue)
        B5 = A6.first!
        A5 = createSubArray(input:A6)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        
        TotalValue = totaling()
        
        testTotal()
    }
    
    
    
    
    
    func C5(){
        
      //  print("got to C5")
        
        let y = A6.firstIndex(of:B5)!
        let t = y + 1
        A5 = [] + A6[0..<y] + A6[t...]
        
      //  print(B5,A5)
        
        
        Value5 = y*(factorial(4))
        
        print("THE VALUE 5 is ", Value5)
        print("Total value ", TotalValue)
        B4 = A5.first!
        A4 = createSubArray(input:A5)
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        
        TotalValue = totaling()
        
        testTotal()
    }
    
    
    
    
    func C4(){
        
    //    print("got to C4")
        
        let y = A5.firstIndex(of:B4)!
        let t = y + 1
        A4 = [] + A5[0..<y] + A5[t...]
        
    //    print(B4,A4)
        
        
        
        Value4 = y*(factorial(3))
        
        print("THE VALUE 4 is ", Value4)
        print("Total value ", TotalValue)
        
       
        B3 = A4.first!
        A3 = createSubArray(input:A4)
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        TotalValue = totaling()
        
        testTotal()
        
    }
    
    
    
    func C3(){
        
      //  print("got to C3")
        
        let y = A4.firstIndex(of:B3)!
        let t = y + 1
        A3 = [] + A4[0..<y] + A4[t...]
        
       // print(B3,A3)
        
        
        
        Value3 = y*(factorial(2))
        
        print("THE VALUE 3 is ", Value3)
        
       
        B2 = A3.first!
        A2 = createSubArray(input:A3)
        B1 = A2.first!
        A1 = createSubArray(input:A2)
        
        TotalValue = totaling()
        
        testTotal()
    }
    
    
    
    
    
    func C2(){
        
     //   print("got to C2")
        
        let y = A3.firstIndex(of:B2)!
        let t = y + 1
        A2 = [] + A3[0..<y] + A3[t...]
        
        //print(B2,A2)
        
        
        
        Value2 = y*(factorial(1))
        
        
        print("THE VALUE 2 is ", Value2)
        
        

        B1 = A2.first!
        A1 = createSubArray(input:A2)
        
        TotalValue = totaling()
        Value1 = 1
        testTotal()
    }
    
    
    
    
    
    
    func C1(){
        
     //   print("got to C1")
        
        let y = A2.firstIndex(of:B1)!
        let t = y + 1
        A1 = [] + A1[0..<y] + A1[t...]
        
       // print(B1,A1)
        
        
        TotalValue = totaling()
        
        
        
        
        
        
        
    }
    
    func totaling()->Int {
        
        
        
        
        //2783915460
        
        
        let total = Value10+Value9+Value8+Value7+Value6+Value5+Value4+Value3+Value2+Value1
        
        return total
    }
    func testTotal() {
        print("Value10 is ",Value10)
        print("Value9 is ",Value9)
        print("Value8 is ",Value8)
        print("Value7 is ",Value7)
        print("Value6 is ",Value6)
        print("Value5 is ",Value5)
        print("Value4 is ",Value4)
        print("Value3 is ",Value3)
        print("Value2 is ",Value2)
        print("Value1 is ",Value1 )
        print("TotalValue is ",TotalValue)
        
    }
    //0b11110100001001000000
    //          0b0000000000
}
