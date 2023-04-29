//
//  LogedInVIew.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct LogedInVIew: View {
    var body: some View {
        VStack {
            Text("Hey you're now logged in")
            Button{
                
            }label: {
                Text("Logout")
            }
        }
    }
}

struct LogedInVIew_Previews: PreviewProvider {
    static var previews: some View {
        LogedInVIew()
    }
}
