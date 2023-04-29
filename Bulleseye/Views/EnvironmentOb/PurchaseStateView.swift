//
//  PurchaseStateView.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct PurchaseStateView: View {
    var body: some View {
        VStack {
            Image(systemName: "lock").font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
               Text("The user hasn't unlocked this feature")
        }
    }
}

struct PurchaseStateView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStateView()
    }
}
