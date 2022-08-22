//
//  Fibs.swift
//  E25Tests
//
//  Created by stephen weber on 8/22/22.
//

import Foundation

class Fibs {
    var FibList = ["0","1","1"]
    var CurrentLength = 1
    
    var FibIndex = 2
    func increaseFibNumbers(){
        var answer = adding(a:FibList[FibIndex-1],b:FibList[FibIndex])
        
            //print(FibList)
        FibList.append(answer)
        CurrentLength = answer.count
        FibIndex += 1
    }
    
    func adding(a: String,b:String)->String{
        
        
        
        var c = Array(a).reversed().compactMap { Int(String($0))}
        var d = Array(b).reversed().compactMap { Int(String($0))}
        var carry = 0
        var lengthC = c.count
        var lengthD = d.count
        var length = max(lengthC,lengthD)
        if lengthD>lengthC {
            let k = lengthD-lengthC
            for i in 0..<k {
                c.append(0)
            }
        }
        if lengthC>lengthD {
            let k = lengthC-lengthD
            for i in 0..<k {
                d.append(0)
            }
        }
            //        print(c)
            //        print(d)
        
        
        
        var result = [Int]()
        
        
        for i in 0..<length {
            var p = c[i] + d[i] + carry
                //
            if p>9 {
                let r = p%10
                result.append(r)
                carry = p/10
                
            }
            else {
                result.append(p)
                carry = 0
            }
            
            
        }
        if carry != 0 {
            result.append(carry)
        }
        
        
        var setting = result.reversed()
        var answer = setting.map {"\($0)"}.reduce(""){$0+$1}
        
            //        print("________",answer)
        return answer
    }
}
