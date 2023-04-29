//
//  TutorialView.swift
//  Bulleseye
//
//  Created by ekincare on 08/04/23.
//

import SwiftUI

class Something: ObservableObject{
    @Published var counter = 0
}

struct TutorialView: View {
    
    @StateObject var thing = Something()
    
    var body: some View {
        VStack {
            Text("Counter").font(.largeTitle)
            Text("Total is \(thing.counter)")
            TutorialFooterView(thing: thing)
            
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
