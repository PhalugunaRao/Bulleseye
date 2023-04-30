//
//  DemoStateObjectView.swift
//  Bulleseye
//
//  Created by ekincare on 29/04/23.
//

import SwiftUI

struct DemoStateObjectView: View {
    
    @StateObject var model = MyModel()
    
    var body: some View {
        VStack{
            Text("Count: \(model.count)")
            Spacer().frame(height:20)
            
            Button("Increment"){
                model.count += 1
                
            }
            
            Spacer().frame(height:20)
            
            Button("Decrement"){
                model.count -= 1
                
            }
            
        }
    }
}


struct DemoStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        DemoStateObjectView()
    }
}


