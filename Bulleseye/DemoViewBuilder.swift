//
//  DemoViewBuilder.swift
//  Bulleseye
//
//  Created by ekincare on 14/05/23.
//

import SwiftUI

struct DemoViewBuilder: View {
    var isRed: Bool = true
    var body: some View {
        VStack{
            
            Text("Welcome to ViewBuilder")
                .font(.title)
            
            SomeView {
                Text("This is the first view")
            }
            
            if isRed {
                SomeView {
                    Text("This is the second view")
                        .foregroundColor(.red)
                }
            }
            SomeView {
                Text("This is the third view")
            }
            //            SomeView{
            //                Text("Hello")
            //                            Button("Tap me") {
            //                                // Action
            //                            }
            //            }
        }
    }
}

@ViewBuilder
func SomeView<Content: View>(@ViewBuilder content: () -> Content) -> some View {
    VStack {
        content()
            .padding()
            .background(Color.gray)
            .cornerRadius(10)
    }
}


//The SomeView function takes a closure named content annotated with @ViewBuilder. This closure will provide the content of the view.
//
//Inside the function, we create a VStack to hold the provided content.
//
//The content() closure is invoked inside the VStack to dynamically include the content views.
//
//We apply some common modifiers to the content views. In this example, we add padding, a gray background color, and a corner radius to the content views.

struct DemoViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        DemoViewBuilder()
    }
}
