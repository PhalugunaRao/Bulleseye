//
//  NavigationBootCamp.swift
//  Bulleseye
//
//  Created by ekincare on 30/04/23.
//

import SwiftUI

struct NavigationBootCamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello World", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
           // .navigationBarHidden(true)
            .navigationBarItems(
                
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                    
                trailing:
                    NavigationLink(destination:MyOtherScreen(),
                                   label: {
                                       Image(systemName: "gear")
                                   })
                    .accentColor(.red)
                )
                    
            
        }
       
       
    }
}

struct NavigationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootCamp()
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            VStack{
                Button("BACK BUTTON"){
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer().frame(height:20)
                NavigationLink("Click here", destination: Text("3rd screen"))
            }
            
           
        }
    }
}
