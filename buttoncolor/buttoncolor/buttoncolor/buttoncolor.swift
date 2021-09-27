//
//  buttoncolor.swift
//  exercice
//
//  Created by abdouladim on 29/7/2021.
//

import SwiftUI

struct buttoncolor: View {
    @State var colorx : Color = Color.gray
    var body: some View {
        ZStack {
            colorx
            HStack {
                       Button(action: {
                           colorx = Color.red
                       }) {
                           RoundedRectangle(cornerRadius: 25.0)
                               .overlay(HStack {
                                   Image(systemName: "heart.fill").foregroundColor(.white)
                                   Text("Heart")
                                       .foregroundColor(.white)
                               })
                               .foregroundColor(.red)
                               .frame(width: 100, height: 50)
                       }
                       
                      
                       Button(action: {
                           colorx = Color.green
                       }) {
                           RoundedRectangle(cornerRadius: 25.0)
                               .overlay(HStack {
                                   Image(systemName: "heart.fill").foregroundColor(.white)
                                   Text("Heart")
                                       .foregroundColor(.white)
                               })
                               .foregroundColor(.green)
                               .frame(width: 100, height: 50)
                       }
                       Button(action: {
                           colorx = Color.blue
                       }) {
                           RoundedRectangle(cornerRadius: 25.0)
                               .overlay(HStack {
                                   Image(systemName: "heart.fill").foregroundColor(.white)
                                   Text("Heart")
                                       .foregroundColor(.white)
                               })
                               .foregroundColor(.blue)
                               .frame(width: 100, height: 50)
                       }
                   }

                 
                       .padding()
            
        }
       
    }
}


struct buttoncolor_Previews: PreviewProvider {
    static var previews: some View {
        buttoncolor()
    }
}
