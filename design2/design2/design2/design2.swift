//
//  design2.swift
//  exercice
//
//  Created by abdouladim on 30/7/2021.
//

import SwiftUI

struct design2: View {
    @State var slidevalue : Double = 0
    var res: Double  {
            
            return slidevalue * 9/5 + 32
        }
    var res1: Double  {
            
        return slidevalue / 1.8
        }
    var res2: Double  {
            
        return res + 237
        }
    var body: some View {
        
        ZStack {
            HStack (spacing:0) {
                           
                           HStack {
                               Color.red
                           } .overlay(
                            Text("kelvin \n (\(res2, specifier: "%.2f"))")
                           )
                           HStack {
                               Color.blue
                           }.overlay(
                               Text("Fahrenit \n (\(res, specifier: "%.2f"))")
                           )
                           HStack {
                               Color.yellow
                           }.overlay(
                               Text("Celcius \n (\(res1, specifier: "%.2f"))")
                               
                           )

                       }
            
            Slider(value: $slidevalue, in : 0...100).position(x:210,y: 800)

        }
           
      
        
            
        
    }
}

struct design2_Previews: PreviewProvider {
    static var previews: some View {
        design2()
    }
}
