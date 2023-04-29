//
//  LoginViewModel.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import Foundation

struct User{
    var username:String = ""
    var password:String = ""
}

final class LoginViewModel:ObservableObject{
    
    @Published var user:User = .init()
    @Published var isLoading:Bool = false
    @Published var isLoggedIn:Bool = false
    
    
    func login(){
        
        guard !user.username.isEmpty && !user.password.isEmpty else{
            return
        }
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            [weak self] in
            self?.isLoading = false
            self?.isLoggedIn = true
            
        }
       
    }
    
    func logout(){
        self.isLoggedIn = false
    }
}
