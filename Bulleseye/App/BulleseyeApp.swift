//
//  BulleseyeApp.swift
//  Bulleseye
//
//  Created by ekincare on 18/03/23.
//

import SwiftUI

@main
struct BulleseyeApp: App {
    
   // @StateObject private var vm = PurchaseViewmodel()
    var body: some Scene {
        WindowGroup {
            NetworkListDemo()
           // LoginView()
//            TabView{
//                PurchaseView()
//                    .environmentObject(vm)
//                    .tabItem {
//                        Image(systemName: "creditcard")
//                        Text("Purchase")
//                    }
//                PurchaseStateView().tabItem {
//                    Image(systemName: "gear")
//                    Text("State")
//                }
//            }
        }
    }
}
