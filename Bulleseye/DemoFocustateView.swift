//
//  DemoFocustateView.swift
//  Bulleseye
//
//  Created by ekincare on 03/05/23.
//

import SwiftUI

struct DemoFocustateView: View {
    @FocusState private var isTextFieldFocused: Bool
    @State private var text1 = ""
    @State private var text2 = ""
    
    var body: some View {
        VStack {
                   TextField("Enter text", text: .constant(""))
                       .focused($isTextFieldFocused)
                   Button("Focus TextField") {
                       isTextFieldFocused = true
                   }
            Spacer().frame(height:20)
            Button("Focus Disable") {
                isTextFieldFocused = false
            }
               }
    }
}

struct DemoFocustateView_Previews: PreviewProvider {
    static var previews: some View {
        DemoFocustateView()
    }
}
