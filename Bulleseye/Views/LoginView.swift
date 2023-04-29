//
//  LoginView.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var user: User
    
    var body: some View {
        VStack {
            TextField("UserName",
                      text: $user.username,
            prompt: Text("Username?"))
            
            SecureField("Password",
                        text: $user.password,
                        prompt: Text("Password"))
            
            Button{
                
            }label: {
                Text("Login")
            }
        }
        .padding(.horizontal,8)
        .textFieldStyle(.roundedBorder)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(user: .constant(.init()))
    }
}
