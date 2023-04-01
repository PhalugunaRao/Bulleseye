//
//  GradientColorShapes.swift
//  Bulleseye
//
//  Created by ekincare on 01/04/23.
//

import SwiftUI

struct GradientColorShapes: View {
    var body: some View {
        ZStack {
            
            AngularGradient(colors: [.red,.yellow,.green,.blue,.purple],
                            center: .center,
                            angle:.degrees(180))
            .mask(
                Text("Hello")
                    .bold().font(.largeTitle)
            )
           
            
            
            
            
//            Text("Hello")
//                .padding()
//                .background(
//                    AngularGradient(colors: [.red,.yellow,.green,.blue,.purple],
//                                    center: .center,
//                                    angle:.degrees(180))
//                )
//
            
            
//            RadialGradient(colors: [.black,.mint,.purple,.blue],
//                           center: .center,
//                           startRadius: 50,
//                           endRadius: 100)
//                .ignoresSafeArea()
//            Text("HELLO").foregroundColor(.white)
            
            
            
            
//            LinearGradient(gradient: Gradient(colors: [.white,.blue,.black]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct GradientColorShapes_Previews: PreviewProvider {
    static var previews: some View {
        GradientColorShapes()
    }
}
