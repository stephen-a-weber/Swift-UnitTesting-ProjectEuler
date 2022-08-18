    //
    //  ContentView.swift
    //  E24
    //
    //  Created by stephen weber on 8/15/22.
    //

import SwiftUI

struct ContentView: View {
    @StateObject var Data = Perms()
    var numbers = [0,1,2,3,4,5,6,7,8,9]
    var Question :String = """
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
"""
    var body: some View {
         
            VStack(alignment:.leading){
                Text(Question)
                    .font(.largeTitle)
                    .frame(alignment:.center)
                Spacer()
                
                Group {
                    HStack   {//10 digits
                        
                        
                        Group{
                            Picker(" ", selection:  $Data.B10)  {
                                ForEach(Data.original, id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B10) { (value) in
                                Data.C10()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A10,id:\.self) {
                            Text(String($0))
                        }
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    HStack  {//9digits
                        
                        Text(String(Data.B10))
                        Group{
                            Picker(" ", selection:  $Data.B9)  {
                                ForEach(  Data.A10 , id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B9) { (value) in
                                Data.C9()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A9,id:\.self) {
                            Text(String($0))
                        }
                        
                    }
                    
                    
                    
                    
                    
                    HStack  {//8digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Group{
                            Picker(" ", selection:  $Data.B8)  {
                                ForEach(  Data.A9 , id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B8) { (value) in
                                Data.C8()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A8,id:\.self) {
                            Text(String($0))
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    HStack  {//7digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Group{
                            Picker(" ", selection:  $Data.B7)  {
                                ForEach(  Data.A8 , id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B7) { (value) in
                                Data.C7()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A7,id:\.self) {
                            Text(String($0))
                        }
                        
                    }
                    
                    
                    
                    
                }
                
                Group{
                    HStack  {//6digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Text(String(Data.B7))
                        Group{
                            Picker(" ", selection:  $Data.B6)  {
                                ForEach(  Data.A7 , id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B6) { (value) in
                                Data.C6()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A6,id:\.self) {
                            Text(String($0))
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    HStack  {//5digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Text(String(Data.B7))
                        Text(String(Data.B6))
                        Group{
                            Picker(" ", selection:  $Data.B5)  {
                                ForEach(  Data.A6 , id:\.self) {
                                    Text(String($0))
                                    
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B5) { (value) in
                                Data.C5()}
                            
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A5,id:\.self) {
                            Text(String($0))
                        }
                        
                    }
                    
                    
                    
                    
                    
                    HStack  {//4digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Text(String(Data.B7))
                        Text(String(Data.B6))
                        Text(String(Data.B5))
                        Group{
                            Picker(" ", selection:  $Data.B4)  {
                                ForEach(  Data.A5 , id:\.self) {
                                    Text(String($0))
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B4) { (value) in
                                Data.C4()}
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A4,id:\.self) {
                            Text(String($0))
                            
                        }
                        
                    }
                    
                    
                    
                    
                    HStack  {//3digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Text(String(Data.B7))
                        Text(String(Data.B6))
                        Text(String(Data.B5))
                        Text(String(Data.B4))
                        Group{
                            Picker(" ", selection:  $Data.B3)  {
                                ForEach(  Data.A4 , id:\.self) {
                                    Text(String($0))
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B3) { (value) in
                                Data.C3()}
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A3,id:\.self) {
                            Text(String($0))
                        }
                    }
                    
                    
                    
                    
                    
                    HStack  {//2digits
                        Text(String(Data.B10))
                        Text(String(Data.B9))
                        Text(String(Data.B8))
                        Text(String(Data.B7))
                        Text(String(Data.B6))
                        Text(String(Data.B5))
                        Text(String(Data.B4))
                        Text(String(Data.B3))
                        Group{
                            Picker(" ", selection:  $Data.B2)  {
                                ForEach(  Data.A3 , id:\.self) {
                                    Text(String($0))
                                }
                            }
                            .frame(width:50)
                            .clipped()
                            .onChange(of: Data.B2) { (value) in
                                Data.C2()}
                            
                        }
                        .pickerStyle(.menu)
                        ForEach(Data.A2,id:\.self) {
                            Text(String($0))
                        }
                    }
                    
                }
                Spacer()
                 Text(String(Data.TotalValue))
                    .font(.largeTitle)
                
            }
            .frame(width:800,height:800)
            
        }
    }
    
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
