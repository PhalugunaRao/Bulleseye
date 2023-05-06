//
//  ToDoListView.swift
//  Bulleseye
//
//  Created by ekincare on 06/05/23.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Chnage the World",
                 "Bring the Awesome",
                 "Take a vacation"]
    var body: some View {
        
        
        
//        NavigationStack{
//            NavigationLink {
//                ToDoDetailView()
//            } label: {
//                Image(systemName: "eye")
//                Text("Show the New View!")
//            }.buttonStyle(.borderedProminent)
//
//        }
//        .padding()
        
        NavigationStack{
//            List{
//                Section{
//                    NavigationLink {
//                        ToDoDetailView()
//                    } label: {
//                        Text("Winter")
//                    }
//                    Text("Summer")
//
//                }header: {
//                    Text("Breaks")
//                }
//
//                Section{
//                    Text("Spring")
//                    Text("Fall")
//                }header: {
//                    Text("Semisters")
//                }
//
//
//
//
//            }
            
            
            
//            List{
//                ForEach(0..<100, id: \.self) { number in
//                    NavigationLink {
//                        ToDoDetailView(passedValue: "Item \(number)")
//                    } label: {
//                        Text("Item \(number)")
//                    }
//
//
//
//                }
//
//            }
            
            List{
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        ToDoDetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                    
                }
            }
            .navigationTitle("School Year")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
        
        
       
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}


