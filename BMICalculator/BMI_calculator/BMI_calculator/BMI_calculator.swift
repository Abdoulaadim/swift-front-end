//
//  BMI calculator.swift
//  exercice
//
//  Created by abdouladim on 30/7/2021.
//

import SwiftUI

struct BMI_calculator: View {
    @State var slidevalue : Double = 0
    @State var slidevalue1 : Double = 0
    //@State var text : String = "poids "
    //@State  var colorx: Color = .green
    var res: Double  {
            
            return slidevalue/(slidevalue1*slidevalue1)
        }

    
   
    
    var body: some View {
        VStack {
         
            
           

            Spacer()
            Text("what is your weight")
            Slider(value: $slidevalue, in : 0...100)
            Text("\(slidevalue, specifier: "%.2f")")
                .padding()
            Text("what is your height")
            Slider(value: $slidevalue1, in : 0...100)
            Text("\(slidevalue1, specifier: "%.2f")")
                .padding()
            Spacer()
            HStack  {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 80)
                    .overlay(
                                Text("\(res, specifier: "%.2f")")
                            )
               
                Rectangle()
                    .fill(colorx)
                    .frame(width: 300, height: 80)
                    .overlay(
                                text
                            )
                
                    
                
            }
        }
    }
    
    var colorx:Color {
        switch res {
        case 35...: return Color(.red)
        case 30..<35 : return Color(.orange)
        case 25..<30 : return Color(.yellow)
        case 18.5..<25 : return Color(.green)
        default : return Color(.gray)
        }
    }
    var text:Text {
        switch res {
        case 35...: return Text("Morbidly overweight")
        case 30..<35 : return Text("Severely overweight")
        case 25..<30 : return Text("Overweight")
        case 18.5..<25 : return Text("Healthy")
        default : return Text("Underweight")
        }
    }
}

struct BMI_calculator_Previews: PreviewProvider {
    static var previews: some View {
        BMI_calculator()
    }
}
