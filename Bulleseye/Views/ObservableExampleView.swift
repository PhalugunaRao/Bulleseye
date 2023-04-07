//
//  ObservableExampleView.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct ObservableExampleView: View {
   
    @StateObject private var vm = PeopleViewModel()
    
    var body: some View {
        VStack{
            if vm.isLoading {
                ProgressView()
                Text("Loading....").padding()
            }else {
                Text(vm.people.isEmpty ? "No Users" : "Manage to get \(vm.people.count) users")
            }
            
            Button(action:vm.fetchPeople ){
                Text("Fetch some people")
            }
        }
    }
}





struct ObservableExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableExampleView()
    }
}
