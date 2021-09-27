//
//  animation.swift
//  exercice
//
//  Created by abdouladim on 5/8/2021.
//

import SwiftUI

struct animation: View {
    @State private var chnginFont: Bool = false
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(chnginFont ? .system(size: 30): .title)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration: 0.3))
                .offset(x:chnginFont ? 0 : -300)
            CustomButton(changingFont : $chnginFont)
            
        }
    }
}

struct animation_Previews: PreviewProvider {
    static var previews: some View {
        animation()
    }
}


struct CustomButton: View {
    @Binding var changingFont: Bool
    
    var body: some View {
        
        Button(action:{
            changingFont.toggle()
        },label:{
            ZStack{
                Text("Press me")
                    .foregroundColor(.white)
                    .padding()
                    .background(Rectangle())
                    .cornerRadius(30)
            }
        })
    
    }
}
