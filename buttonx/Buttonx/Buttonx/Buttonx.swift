//
//  Buttonx.swift
//  exercice
//
//  Created by abdouladim on 28/7/2021.
//

import SwiftUI

struct Buttonx: View {
    @State var text : String = "Select a suit "
    var body: some View {
        
        VStack {
                    HStack {
                        Button(action: {
                            text = "❤️"
                        }) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .overlay(HStack {
                                    Image(systemName: "heart.fill").foregroundColor(.white)
                                    Text("Heart")
                                        .foregroundColor(.white)
                                })
                                .foregroundColor(.red)
                                .frame(width: 150, height: 50)
                        }
                        Button(action: {
                            text = "♣️"
                        }) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .overlay(HStack {
                                    Image(systemName: "suit.club.fill").foregroundColor(.white)
                                    Text("Suit")
                                        .foregroundColor(.white)
                                })
                                .foregroundColor(.black)
                                .frame(width: 150, height: 50)
                        }
                    }//Hstack
                    .padding(40)
                    
                    //Text
                    Text(text)
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Button(action: {
                        text = "♠️"
                        }) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .overlay(HStack {
                                    Image(systemName: "suit.spade.fill").foregroundColor(.white)
                                    Text("Spade")
                                        .foregroundColor(.white)
                                })
                                .foregroundColor(.black)
                                .frame(width: 150, height: 50)
                        }
                    Button(action: { text =   "♦️"}) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .overlay(HStack {
                                    Image(systemName: "suit.diamond.fill").foregroundColor(.white)
                                    Text("Heart")
                                        .foregroundColor(.white)
                                })
                                .foregroundColor(.red)
                                .frame(width: 150, height: 50)
                        }
                    }
                    .padding(40)
                   
                }//Vstack

       
       
    }
}

struct Buttonx_Previews: PreviewProvider {
    static var previews: some View {
        Buttonx()
    }
}
