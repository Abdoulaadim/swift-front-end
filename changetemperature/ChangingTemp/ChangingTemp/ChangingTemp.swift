//
//  ChangingTemp.swift
//  Hello, world!
//
//  Created by test on 09/06/2021.
//

import SwiftUI

struct ChangingTemp: View {
    //Variables
    @State private var temperature: Double = 0
    @State private var colorized: Color = .white
    
    var body: some View {
        
        ZStack {
                switch temperature {
                case 0...19:
                    Color.blue
                    Text("It's so cold 🥶").font(.largeTitle)
                case 19...30:
                    Color.orange
                    Text("It's just fine 😎").font(.largeTitle)
                case 30...50:
                    Color.red
                    Text("It's too hot 🥵").font(.largeTitle)
                default:
                    Color.clear
                }
                
        VStack {
                Text("\(Int(temperature))°C")
                    .font(.title)
                    .padding()
                Slider(value: $temperature, in: 0...50)
                    .padding()
            }//VStack
        }//Zstack
        .ignoresSafeArea()
      
        
        
    }
}

struct ChangingTemp_Previews: PreviewProvider {
    static var previews: some View {
        ChangingTemp()
    }
}


