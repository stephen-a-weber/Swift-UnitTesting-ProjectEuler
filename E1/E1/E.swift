    //
    //  E.swift
    //  E1
    //
    //  Created by stephen weber on 4/23/22.
    //

    /////
    ///
    ///2  4  6   8   10   12   14   16   18   20   22   24   26   28   30   32   34   36   38   40   42   44   46   48   50   52   54   56
    ///3      6      9       12       15      18       21      24       27      30       33      36       39      42       45      48       51      54      57
    ///5                10              15             20              25             30              35             40              45             50              55
    ///7                             14                      21                    28                     35                    42                    49                     56



import Foundation
import Algorithms

    /// <#Description#>
class E {
    var limit = Int()
    var multiples = [Int]()
    
    init(){}
    init(multiples: [Int], limit : Int) {
        self.limit = limit
        self.multiples = removeMultiples(a: multiples)
        
        
    }
    func gcd(a: Int, b: Int)-> Int {
        if b==0 {return 0}
        let r = a % b
        if r == 0 {
            return b
        }
        else {
            return gcd(a: b, b: r)
        }
    }
    func lcm(a: Int , b: Int )-> Int {
        let r = gcd(a: a,b: b)
        return (a * b) / r
    }
    func removeMultiples(a: [Int]) -> [Int]{
        if a.count < 2
        { return a}
        var z = Set<Int>()
        let p=Array(Set(a))
      //  print("here is p",p)
        for b in p.combinations(ofCount: 2){
                //these are never equal here due to p
          //  print (b)
            let d = b[0]
            let f = b[1]
            
            let g = min(d,f)
            let h = max(d,f)
            if h%g == 0 {
                z.insert(h)
            }
            
            
        }
        var pp = Set(p)
        for i in z { pp.remove(i)}
        return Array(pp)
        
        
        
    }
    
    
        //
        //                let q = a[0]
        //                let b = a[1]
        //                let c = a[2]
        //                var d = lcm(a: q,b: b)
        //                d = lcm(a:d,b: c)
    func lcm3(p: [Int])->Int {
      
        var k = p[0]
        for i in 1..<p.count {
            k = lcm(a: k,b: p[i])
        }
        return k
        
        
        
    }
    func soln()-> Int {
        var answer = 0
        if multiples.count == 0 {return 0}
        if multiples.contains(0) {return 0}
        
        for a in multiples.combinations(ofCount:1)
        {answer += sumMult(A:a[0])}
        if multiples.count >= 2{
        for i in 2...multiples.count {
        
            for a in multiples.combinations(ofCount:i){
                
                let b = lcm3(p:a)
                if i%2==0 {answer-=sumMult(A:b)}
                else {answer+=sumMult(A:b)}
            }
        
        
        }
        }
        print("EulerSoln :",answer)
       return answer
    }
    
    func solution() -> Int {
        var answer = 0
        
        if multiples.count>0 {
            if multiples[0]==0 {
                return 0
            }
            for a in multiples.combinations(ofCount: 1) {
                    //print(multiples,a)
                answer += sumMult(A:a[0])
                
            }
        }
        if multiples.count == 2{
            for a in multiples.combinations(ofCount: 2) {
                    //  let b = a[0] * a[1]
                let b = lcm(a: a[0], b: a[1])
                    // need least common multiple of a[0],a[1]
                    //  print(multiples,a)
                answer -= sumMult(A:b)
            }
        }
        if multiples.count == 3 {
            for a in multiples.combinations(ofCount: 2) {
                    //  let b = a[0] * a[1]
           //     let b = lcm(a: a[0], b: a[1])
                let b = lcm3(p: a)
              //  print ("OVER HERE HRE HRE",b,frog)
                    // need least common multiple of a[0],a[1]
                    //  print(multiples,a)
                answer -= sumMult(A:b)
            }
            
            for a in multiples.combinations(ofCount:3) {
              
//                let q = a[0]
//                let b = a[1]
//                let c = a[2]
//                var d = lcm(a: q,b: b)
//                d = lcm(a:d,b: c)
              let  checkD = lcm3(p: a)
                    // print(checkD,d, "look here")
                if multiples.count%2 == 0 {
                    answer-=sumMult(A: checkD)
                }
                else {
                answer+=sumMult(A: checkD)
                }
                
            }
            
                // print("this should be three :" ,gg)
            
            
        }
        
        print(multiples,limit,answer)
        return answer
        
    }
    
    func sumMult(A: Int) -> Int {
            //        var r = 0
            //        var d = 23
            //        var n = 1000
            //        for a in stride(from: 0, through: n, by: d){
            //            r+=a
            //            print(a,r)
            //        }
            //            //print( ((100 + 5) * 20) / 2) for 5
            //        print((( n/d * d + d) * (n/d) / 2))
        
        let n = limit
        let d = A
        
        return (( n/d * d + d) * (n/d) / 2)
    }
    
}
