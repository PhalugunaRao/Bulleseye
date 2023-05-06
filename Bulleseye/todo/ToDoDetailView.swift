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
    @State private var toDo = ""
    @State private var reminderIsOn = false
    @State private var dueDate = Date.now + (60*60*24)
    @State private var notes = ""
    @State private var isCompleted = false
    var body: some View {
        NavigationStack{
        List{
            TextField("Enter To Do here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                .listRowSeparator(.hidden)
            
            Toggle("Enter To Do here", isOn: $reminderIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
            DatePicker("Date", selection: $dueDate)
                .listRowSeparator(.hidden)
                .padding(.bottom)
                .disabled(!reminderIsOn)
            
            Text("Notes:")
                .padding(.top)
            
            TextField("Notes", text: $notes,axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            Toggle("Completed", isOn: $isCompleted)
                .padding(.top)
                .listRowSeparator(.hidden)
            
        }
        .listStyle(.plain)
        .toolbar{
            ToolbarItem (placement: .navigationBarLeading){
                Button("Cancel"){
                    dismiss()
                    
                }
                
            }
            ToolbarItem (placement: .navigationBarTrailing){
                Button("Save"){
                    dismiss()
                    
                }
                
            }
            
                   
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
        
        
        
        
        
//        VStack{
//            Image(systemName: "swift")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.orange)
//            Text("You are a swifity Legend!\n And you passed overt the value \(passedValue)")
//                .font(.largeTitle)
//                .multilineTextAlignment(.center)
//
//            Spacer()
//
//            Button("Get Back!"){
//                dismiss()
//
//            }.buttonStyle(.borderedProminent)
//
//        }
//        .padding()
//        //.navigationBarBackButtonHidden()
        
        
        
        
       
    }
}

struct ToDoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailView(passedValue: "Item 1")
    }
}
