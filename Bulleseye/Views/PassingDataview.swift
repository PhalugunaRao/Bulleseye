//
//  PassingDataview.swift
//  Bulleseye
//
//  Created by ekincare on 06/04/23.
//

import SwiftUI

struct PassingDataview: View {
    
    @State private var isLoading: Bool = false
    var body: some View {
        VStack {
            CustomLoadingView(isLoading: $isLoading)
            Button{
                isLoading.toggle()
            }label: {
                Text("\(isLoading ? "start" :"stop") Loading")
        }
        }
    }
}

struct PassingDataview_Previews: PreviewProvider {
    static var previews: some View {
        PassingDataview()
    }
}
