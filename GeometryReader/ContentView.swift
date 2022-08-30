//
//  ContentView.swift
//  GeometryReader
//
//  Created by M. A. Alim Mukul on 30.08.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            GeometryReader {
                g in
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Color(hue: 0.285, saturation: 0.81, brightness: 0.493))
                        .onTapGesture {
                            print("Green rectangle's info")
                            print("width : \(g.size.width), height : \(g.size.height)")
                        }
                    
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 2*(g.size.width)/3, height: g.size.height/4, alignment: .center)
                        .onTapGesture {
                            
                            print("Red rectangle's info")
                            print("width : \(2*(g.size.width)/3), height : \(g.size.height/4)")
                            print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                            print("local x: \(g.frame(in: .local).minX), y: \(g.frame(in: .local).minY)")
                        }
                }
            }
            
            GeometryReader {
                g in
                
                VStack {
                    
                    HStack(spacing: 0.0) {
                        Rectangle()
                            .foregroundColor(.purple)
                            .frame(width: g.size.width/2, height: g.size.height, alignment: .center)
                            .onTapGesture {
                                
                                print("Purple rectangle's info")
                                print("width : \((g.size.width)/2), height : \(g.size.height)")
                                
                                print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                                print("local x: \(g.frame(in: .local).minX), y: \(g.frame(in: .local).minY)")
                            }
                        
                        Rectangle()
                            .foregroundColor(.orange)
                            .frame(width: g.size.width/2, height: g.size.height, alignment: .center)
                            .onTapGesture {
                                
                                print("Orange rectangle's info")
                                print("width : \((g.size.width)/2), height : \(g.size.height)")
                                
                                print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                                print("local x: \(g.frame(in: .local).minX), y: \(g.frame(in: .local).minY)")
                            }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
