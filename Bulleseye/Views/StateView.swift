//
//  StateView.swift
//  Bulleseye
//
//  Created by ekincare on 02/04/23.
//

import SwiftUI

struct StateView: View {
    @State private var isOn:Bool=false
    
    var body: some View {
        VStack{
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundColor(isOn ? .yellow : .black)
            
            Toggle(isOn: $isOn){
                Text("Toggle Light switch")
            }
            .labelsHidden()
            
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
