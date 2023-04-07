//
//  ObservableObjectView.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct ObservableObjectView: View {
    
    @State private var people: [String] = []
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack{
            if isLoading {
                ProgressView()
                Text("Loading....").padding()
            }else {
                Text(people.isEmpty ? "No Users" : "Manage to get \(people.count) users")
            }
            
            Button(action:fetchPeople ){
                Text("Fetch some people")
            }
        }
    }
}

private extension ObservableObjectView{
    
    func fetchPeople(){
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            people = ["Tunds","Billy","Bob","Geethu"]
            isLoading = false
            
        }
        
    }
}

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView()
    }
}
