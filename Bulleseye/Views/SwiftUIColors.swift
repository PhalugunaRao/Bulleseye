//
//  SwiftUIColors.swift
//  Bulleseye
//
//  Created by ekincare on 01/04/23.
//

import SwiftUI

struct SwiftUIColors: View {
    var body: some View {
        
        ZStack {
//            Color("Secondary").ignoresSafeArea()
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
//            Color(red: 48 / 255, green: 60/255, blue: 255/255).ignoresSafeArea()
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Color(uiColor: .init(.mint)).ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct SwiftUIColors_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIColors()
    }
}
