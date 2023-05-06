//
//  FocusStateBootCamp.swift
//  Bulleseye
//
//  Created by ekincare on 01/05/23.
//

import SwiftUI

struct FocusStateBootCamp: View {
    @State private var username: String = ""
    var body: some View {
        VStack{
            TextField("Add your name here...", text: $username)
                .padding(.leading)
                .frame(height:55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
        }.padding(40)
    }
}

struct FocusStateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootCamp()
    }
}
