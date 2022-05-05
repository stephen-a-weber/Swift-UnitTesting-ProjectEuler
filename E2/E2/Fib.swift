//
//  Fib.swift
//  E2
//
//  Created by stephen weber on 4/24/22.
//

import Foundation

class Fib {
    var n : Int = 1

    var container = [Int]()
    init() {}
    init(n: Int) {
        self.n = n
    }
    func getEvens(array: [Int])-> [Int] {
        var answer = [Int]()
        for i in array {
            if i%2==0 {
                answer.append(i)
            }
        }
        return answer
    }
    func solution()-> Int {
        container = []
        var total = 0
        var n1 = 1
        var n2 = 1
        var hold = 0
        if n==0 { return 0}
        if n==1 {container = [1]
            return 1}
        if n==2 {container = [1,1]
            return 1}
        container = [1,1]
        for _ in 3...n {
            hold = n1 + n2
            total = hold
            n1 = n2
            n2 = hold
            container.append(total)
        }
        return total
    }
    func fib(_ n: Int ) -> Int {
        if n==0 {return 0}
        if n <= 2 {return  1}
        else {return (fib(n - 2) + fib(n - 1)) }
    }
}
