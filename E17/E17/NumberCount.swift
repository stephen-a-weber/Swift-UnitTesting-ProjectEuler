//
//  NumberCount.swift
//  E17
//
//  Created by stephen weber on 6/21/22.
//

import Foundation
class Solution {
    var count = [Character:Int ]()
    func makeNumberWord() {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.spellOut
        
       
         // prints: two thousand eighteen
        for i in 1...1000 {
            let spellOutText = formatter.string(for: i)!
            print(spellOutText)
            let R = Array(spellOutText)
            for j in R {
                count[j, default : 0 ] += 1
            }
        }
    }
    
}
