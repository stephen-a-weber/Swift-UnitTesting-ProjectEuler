    //
    //  Number.swift
    //  E8
    //
    //  Created by stephen weber on 4/30/22.
    //

import Foundation

class Number {
    
    var number : String = """
7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
"""
    
    var maxArray = [Int64]()
    var ArrayDict = [Int64: String]()
    var bestString = ""
    
    func subString(start: Int, _ length: Int) -> String {
        let SI = number.index(number.startIndex,offsetBy:start)
        let SE = number.index(number.startIndex,offsetBy: start+length)
        return String(number[SI..<SE])
        
    }
    
    func hash(_ n: String) -> Int64{
    let Ary = Array(n)
        var total : Int64 = 0
        for i in Ary {
            let y = Int(String(i))!
            if (y==0) {total *= 0
                break
            }
            var p : Int64 = 1
            p <<= y
            total += p
        }
        maxArray.append(total)
        ArrayDict[total] = n
        
     return total
    }
    
    func run() {
        for i in 0...987 {
            let word = subString(start:i,13)
            let _ = hash(word)
        }
    }
    func run2() ->Int{
        var best = 0
        for i in 0...987 {
            var trial = 1
            let word = subString(start:i,13)
            let Ary = Array(word)
            for i in Ary {
                trial *= Int(String(i))!
                
              
            }
            if trial > best {
                best = trial
                bestString = word
            }
        }
       return best
    }
    func solution()->Int {
        run()
        let g = maxArray.max()!
        print("the maximum is ", g)
        let h = ArrayDict[g]!
        print("this leads to this string ", h)
        let Ary = Array(h)
        print("And this expands to this array", Ary)
        var total = 1
        for i in Ary {
            let y = Int(String(i))!
            print("each value is ", y, total)
            total *= y
        }
        return total
        }
    
}
