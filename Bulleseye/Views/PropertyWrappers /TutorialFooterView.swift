//
//  TutorialFooterView.swift
//  Bulleseye
//
//  Created by ekincare on 08/04/23.
//

import SwiftUI

struct TutorialFooterView: View {
    @ObservedObject var thing: Something
    var body: some View {
        Button{
            thing.counter += 1
        }label: {
            Text("Increase to \(thing.counter + 1)")
        }
    }
}

//struct TutorialFooterView_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialFooterView(counter: Int)
//    }
//}
