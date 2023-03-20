//
//  ContentView.swift
//  Bulleseye
//
//  Created by ekincare on 18/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible:Bool = false
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPut the bullseye as close as you can to")
                .bold()
                .multilineTextAlignment(.center).lineSpacing(4.0)
                .font(.footnote)
                .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text("1").bold()
                Slider(value: .constant(50), in: 1.0...100.0)
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
                   Text("This is my first alert!")
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
