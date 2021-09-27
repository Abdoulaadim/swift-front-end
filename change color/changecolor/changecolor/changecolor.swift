//
//  changecolor.swift
//  exercice
//
//  Created by abdouladim on 30/7/2021.
//

import SwiftUI

struct changecolor: View {
   
    @State var selectedValue = 0
    var body: some View {
        ZStack {
            VStack {
                
                Picker(selection: $selectedValue, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                                Text("reed").tag(1)
                                Text("yellow").tag(2)
                                Text("blue").tag(3)
                                Text("green").tag(4)
                            }
              

                Spacer()
              
                Rectangle()
                    .fill(
                       RadialGradient(gradient: Gradient(colors: [colorx, Color.black ]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 80, endRadius: 100)
                        )
                    
                    .frame(width: 300, height: 300)
                Spacer()
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                }

            }
         
        }
     

    }
    var colorx:Color {
                                    switch selectedValue {
                                    case 1: return Color(.red)
                                    case 2: return Color(.yellow)
                                    case 3 : return Color(.blue)
                                    case 4 : return Color(.green)
                                    default : return Color(.gray)
                                    }
                                }
}

struct changecolor_Previews: PreviewProvider {
    static var previews: some View {
        changecolor()
    }
}
