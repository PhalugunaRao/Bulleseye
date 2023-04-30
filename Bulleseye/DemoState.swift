//
//  DemoState.swift
//  Bulleseye
//
//  Created by ekincare on 29/04/23.
//

import SwiftUI

struct DemoState: View {
    @State var count = 0
    @State var mybind = 0
    var body: some View {
        VStack{
            Text("Count: \(count)")
            Button("Increment"){
                count += 1
                
            }
//            Spacer().frame(height: 50)
//            DemoBindView(count: $mybind)
        }
    }
}

struct DemoState_Previews: PreviewProvider {
    static var previews: some View {
        DemoState()
    }
}
