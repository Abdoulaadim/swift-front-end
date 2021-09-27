//
//  SwiftUIView.swift
//  exercice
//
//  Created by abdouladim on 29/7/2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var slidevalue : Double = 0
    @State var slidevalue1 : Double = 0
    @State var slidevalue2 : Double = 0
    var body: some View {
        let rgbColor = Color(red:slidevalue, green: slidevalue1, blue: slidevalue2)
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Text("RED :\(Int(slidevalue))")
                        .offset(x:-90)
                    Text("Green :\(Int(slidevalue1))")
                        .offset(x:-10)
                    Text("Blue :\(Int(slidevalue2))")
                        .offset(x:50)
                }
                HStack{
                    Slider(value: $slidevalue, in : 0...255)
                    Slider(value: $slidevalue1, in : 0...255)
                    Slider(value: $slidevalue2, in : 0...255)
                }
            }.background(rgbColor)
            
        }
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
