//
//  ToDoDetailView.swift
//  Bulleseye
//
//  Created by ekincare on 06/05/23.
//

import SwiftUI

struct ToDoDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var passedValue: String
    var body: some View {
        VStack{
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            Text("You are a swifity Legend!\n And you passed overt the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!"){
                dismiss()
                
            }.buttonStyle(.borderedProminent)
            
        }
        .padding()
        //.navigationBarBackButtonHidden()
       
    }
}

struct ToDoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailView(passedValue: "Item 1")
    }
}
