//
//  ContentView.swift
//  E10
//
//  Created by stephen weber on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 20, maximum: 200), spacing: nil, alignment: nil),
        GridItem(.fixed(40), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    
    
    var body: some View {
        LazyVGrid(columns:columns) {
            ForEach(0..<150){ index in
                
            Rectangle()
                    .frame(height:50)
        }
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
