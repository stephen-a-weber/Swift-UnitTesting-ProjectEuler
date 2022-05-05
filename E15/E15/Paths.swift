//
//  Paths.swift
//  E15Tests
//
//  Created by stephen weber on 5/4/22.
//

import Foundation
import SwiftUI

class Paths {
    
    
    var P = [[Int]]()
    
    func ways(sides: Int)-> Int{
        
        P = Array(repeating: Array(repeating: 0, count: sides+1), count: sides+1)
            
        for i in 0...sides {
            
            P[i][0]=1
            P[0][i]=1
        }
        for i in 1...sides {
            for j in 1...sides {
            
                P[i][j] = P[i-1][j] + P[i][j-1]
            }
        }
        
        return P[sides  ][sides ]
    }
}
