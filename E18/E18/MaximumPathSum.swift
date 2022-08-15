//
//  MaximumPathSum.swift
//  E18
//
//  Created by stephen weber on 8/12/22.
//

import Foundation

class MaximumPathSum {
    var highest = 0
                   var hi = [[75],
                           [95, 64],
                         [17, 47, 82],
                      [18, 35, 87, 10],
                    [20, 04, 82, 47, 65],
                  [19, 01, 23, 75, 03, 34],
                [88, 02, 77, 73, 07, 63, 67],
              [99, 65, 04, 28, 06, 16, 70, 92],
            [41, 41, 26, 56, 83, 40, 80, 70, 33],
          [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
        [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
      [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
    [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
  [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
[04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]]
    
    
    // Start at next to bottom row and find max of the final two paths for each
    // then add max for each of the indices of this next to bottom row to that indice
    // then continue up to the top
    // you get 1074 is maximum path
    //
    // An extention to this way would be how to keep track of maximum path. Another copy of graph empty where you keep track of which lower rows indice is highest.
    func Solve(){
        var theEnd = 14
        while theEnd>0 {
            theEnd -= 1
            for term in 0...(theEnd) {
                let highest = max(hi[theEnd+1][term],hi[theEnd+1][term+1])
             hi[theEnd][term] += highest
                                                       
            }
            
        }
                                                   
                    
                                                   
    }
    
    
}
