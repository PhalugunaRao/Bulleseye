//
//  ShapesView.swift
//  Bulleseye
//
//  Created by ekincare on 01/04/23.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack{
            
            Text("Hello world!")
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue,lineWidth: 5))
            
            Text("Hello world!")
                .padding()
                .border(.red,width: 5)
                .cornerRadius(8)
            
            
            Capsule(style: .circular)
                .fill(.blue)
                .frame(width:150,height: 75)
            Capsule(style: .continuous)
                .frame(width:150,height: 75)
            Circle().frame(width:75,height: 75)
            Ellipse().frame(width:75,height: 50)
            Rectangle().frame(width:75,height: 75)
            RoundedRectangle(cornerRadius: 12).frame(width:75,height: 75)
           
            Image("Image").resizable().frame(width: 100,height: 100).clipShape(Circle())
        }.padding()
        
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
