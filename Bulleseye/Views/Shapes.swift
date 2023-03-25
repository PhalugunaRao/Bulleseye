//
//  Shapes.swift
//  Bulleseye
//
//  Created by ekincare on 25/03/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Circle()
                //.fill(Color.blue)
                .strokeBorder(Color.blue,lineWidth: 25)
                .frame(width: 200,height: 100)
                .background(Color.green)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 200,height: 100)
            Capsule()
                .frame(width: 200,height: 100)
            Ellipse()
                .frame(width: 200,height: 100)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
