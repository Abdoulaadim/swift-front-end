//
//  control folow.swift
//  exercice
//
//  Created by abdouladim on 28/7/2021.
//

import SwiftUI

struct control_folow: View {
    @State var slidevalue : Float = 0
    
    
    var body: some View {
        
        ZStack {
            
            if (slidevalue == 0 )
            {
                Color.red
            }
            else if (slidevalue < 10 )
            {
                Color.blue
            }
            else if (slidevalue == 45)
            {
                Color.secondary
            }
            else if (slidevalue < 40 )
            {
                Color.green
            }
            else if (slidevalue == 50 )
            {
                Color.orange
            }
            else{
                Color.purple
            }
            VStack {
              
                
                Text("\(Int(slidevalue))")
                Text("Temps is just right cap  ")
                Slider(value: $slidevalue, in: 0...50)
                
            }
        }
    }
}

struct control_folow_Previews: PreviewProvider {
    static var previews: some View {
        control_folow()
    }
}
