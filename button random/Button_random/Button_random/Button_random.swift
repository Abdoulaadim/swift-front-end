//
//  Button random.swift
//  exercice
//
//  Created by abdouladim on 3/8/2021.
//

import SwiftUI

struct Button_random: View {
    @State var random: String = ""
    var body: some View {
        VStack {
Spacer()
             Image(systemName: random)
                .resizable()
                .frame(width: 150,height: 150)
                
Spacer()
             Button(action: {
                 self.random = chooseRandomImage()
             }) {
                 Text("Clicker ici ")
             }.padding()
             .foregroundColor(.white)
             .background(Color.red)
             

         }


     }
     }
var images = ["sun.max.fill", "moon.fill", "star.fill"]

func chooseRandomImage() -> String {
    let array = images
    //random sur image
    let result = array.randomElement()!

    return result
}

struct Button_random_Previews: PreviewProvider {
    static var previews: some View {
        Button_random()
    }
}
