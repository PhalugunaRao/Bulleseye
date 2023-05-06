//
//  ToDoListView.swift
//  Bulleseye
//
//  Created by ekincare on 06/05/23.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                ToDoDetailView()
            } label: {
                Image(systemName: "eye")
                Text("Show the New View!")
            }.buttonStyle(.borderedProminent)

        }
        .padding()
       
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}


