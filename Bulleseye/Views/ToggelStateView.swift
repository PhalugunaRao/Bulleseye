//
//  ToggelStateView.swift
//  Bulleseye
//
//  Created by ekincare on 30/03/23.
//

import Foundation
import SwiftUI


struct ToggelStateView: View {
    @State private var isOpen = false
    
    var body: some View {
        VStack{
            Text("Hello world!")
                .padding()
                .foregroundColor(.red).background(Color.black)
            
            Text("My name is Phalu")
                .padding()
            
            Button(action: {}){
                Text("Button")
            }
            Image(systemName: "arrow.down")
                .rotationEffect(.init(degrees: isOpen ?  0 : 180))
            
            Button{
                withAnimation{
                    isOpen.toggle()
                }
            }label: {
                Text("Toggle Arrow")
            }
        }
        
    }
    
}

struct ToggelStateView_Previews: PreviewProvider {
    static var previews: some View {
        ToggelStateView()
    }
}


