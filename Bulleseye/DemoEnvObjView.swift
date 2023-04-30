//
//  DemoEnvObjView.swift
//  Bulleseye
//
//  Created by ekincare on 29/04/23.
//

import SwiftUI

struct DemoEnvObjView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
         Text("Name: \(userData.name)")
         Text("Age: \(userData.age)")
            Spacer().frame(height:50)
                AnotherView()
                }
    }
}

struct AnotherView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            Text("Name: \(userData.name)")
            Text("Age: \(userData.age)")
        }
    }
}

struct DemoEnvObjView_Previews: PreviewProvider {
    static var previews: some View {
        DemoEnvObjView()
                    .environmentObject(UserData(name: "John", age: 30))
    }
}
