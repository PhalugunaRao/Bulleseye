//
//  ToggleStateView.swift
//  Bulleseye
//
//  Created by ekincare on 06/04/23.
//

import SwiftUI

struct ToggleStateView: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack{
            
            Text(isOn ? "Switch is on" : "Switch is off")
            
//            if isOn {
//                Text("Switch is on")
//            } else {
//                Text("Switch is off")
//            }
            
            Button{
                isOn.toggle()
            }label: {
                Text("Toggle me")
                
            }
            
            
        }
    }
}

struct ToggleStateView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStateView()
    }
}
