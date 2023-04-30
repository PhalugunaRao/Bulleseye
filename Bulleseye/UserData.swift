//
//  UserData.swift
//  Bulleseye
//
//  Created by ekincare on 29/04/23.
//

import Foundation

class UserData: ObservableObject {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

