//
//  navigation.swift
//  exercice
//
//  Created by abdouladim on 2/8/2021.
//

import SwiftUI

struct navigation: View {
    @State var username: String = ""
    @State var Password: String = ""
    var body: some View {
        
        NavigationView {
        ZStack {
            Color.yellow
            VStack {
                Text("Username")
                    .font(.callout)
                    .bold()
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text("Password")
                    .font(.callout)
                    .bold()
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                    
                    
                        NavigationLink(destination: DetailView()) {
                            Text("Login")
                        }
                   
                    
                

            }.padding()
        
        }.ignoresSafeArea(.all)
       
            
        }
        
        

          
            
        }
        
    }
    struct DetailView: View {
        
        var body: some View {
            
            Text("Hello")
            
        }
        
    }

struct navigation_Previews: PreviewProvider {
    static var previews: some View {
        navigation()
    }
}
