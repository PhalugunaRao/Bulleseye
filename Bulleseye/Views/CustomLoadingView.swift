//
//  CustomLoadingView.swift
//  Bulleseye
//
//  Created by ekincare on 06/04/23.
//

import SwiftUI

struct CustomLoadingView: View {
    @Binding var isLoading : Bool
    var body: some View {
        if isLoading {
            ProgressView()
        }else {
            Text("Finish loading")
        }
    }
}

struct CustomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingView(isLoading: .constant(true))
        CustomLoadingView(isLoading: .constant(false))
    }
}
