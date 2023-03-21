//
//  ContentView.swift
//  Bulleseye
//
//  Created by ekincare on 18/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible:Bool = false
    @State private var sliderValue:Double = 5.0
    @State private var game: Game = Game()
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPut the bullseye as close as you can to")
                .bold()
                .multilineTextAlignment(.center).lineSpacing(4.0)
                .font(.footnote)
                .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text("1").bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100").bold()
                
            }
            Button("Hit me"){
               alertIsVisible=true
                
            }
            .alert(
                "Hello there!",
                isPresented: $alertIsVisible,
                actions: {
                    Button("Awesome"){
                        print("Alert closed")
                    }
                },
                message: {
                    var roundedValue: Int = Int(sliderValue.rounded())
                   Text("""
                        The slider's value is \(roundedValue).
                        You scored \(game.points(sliderValue:roundedValue)) points this round)
                        """)
                }
                )

        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
