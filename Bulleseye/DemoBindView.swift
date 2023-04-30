//
//  DemoBindView.swift
//  Bulleseye
//
//  Created by ekincare on 29/04/23.
//

import SwiftUI

struct DemoBindView: View {
    @Binding var count : Int
    var body: some View {
        VStack{
            Text("Count: \(count)")
            Button("Add more"){
                count += 1
                
            }
        }
    }
}

struct DemoBindView_Previews: PreviewProvider {
    static var previews: some View {
        DemoBindView(count: .constant(0))
    }
}
