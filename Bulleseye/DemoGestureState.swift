//
//  DemoGestureState.swift
//  Bulleseye
//
//  Created by ekincare on 14/05/23.
//

import SwiftUI

struct DemoGestureState: View {
    @GestureState private var offset: CGSize = .zero
    var body: some View {
        Text("Drag me")
                   .font(.title)
                   .foregroundColor(.white)
                   .padding()
                   .background(Color.blue)
                   .cornerRadius(10)
                   .offset(offset)
                   .gesture(
                       DragGesture()
                           .updating($offset) { value, state, _ in
                               state = value.translation
                           }
                   )
    }
}

struct DemoGestureState_Previews: PreviewProvider {
    static var previews: some View {
        DemoGestureState()
    }
}
