//
//  NamesSorted.swift
//  E22
//
//  Created by stephen weber on 8/15/22.
//

import Foundation

class TextFile {
    
    var allNames = [String]()
    var total = 0
    
    func reading() {
       
        if let path = Bundle.main.url(forResource:"names", withExtension:"txt") {
             
                print("found file in bundle")
            if  let data = try? String(contentsOf:path){
                allNames = data.components(separatedBy:"\",\"")
                
             //   print(allNames.count)
             //  print(allNames[9])
            }
            var trial = allNames
            for x in 0..<allNames.count {
                var y = allNames[x]
                var v = Array(y)
                var frog = ""
                for c in v {
                    if c.isLetter {
                        frog+=String(c)
                    }
                    
                }
                trial[x] = frog
            }
            allNames = trial
        }
        allNames.sort()
    }
    
    func Solution() {
        reading()
        allNames.sort()
        print(allNames[938])
        var wordCount = 1
        for x in allNames {
            var wordValue = 0
            var pop = [Int]()
            let P = Array(x)
            for k in P {
                if k == "\"" { continue}
                let letterValue = k.asciiValue! - 64
                wordValue += Int(letterValue)
                pop.append(Int(letterValue))
            }
            print(wordCount,x,wordValue,pop)
            total += wordValue*wordCount
            wordCount += 1
            
        }
    }
    
    func singleWordCount(n: Int)-> Int {
        var amount = 0
       // let n =  937
        let q = allNames[n]
        print("Looking at ",q)
        let w = Array(q)
        for x in w {
            if x == "\""{ continue }
            let g = x.asciiValue! - 64
            print(g)
            amount += Int(g)*n
        }
        return amount
    }
}
