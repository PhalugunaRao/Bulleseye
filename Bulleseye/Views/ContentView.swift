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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                InstructionView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
               
               

            }
        }
                
    }
}

struct InstructionView: View {
    @Binding var game: Game
    var body: some View {
        VStack{
            InstructionText(text: "🎯🎯🎯 \nPut the bullseye as close as you can to")
            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack{
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
            
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    @Binding var sliderValue: Double
    var body: some View {
        Button("Hit me".uppercased()){
           alertIsVisible=true
            
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white,lineWidth: 2.0)
        )
        .foregroundColor(.white)
        .cornerRadius(21.0)
        .bold()
        .font(.title3)

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
