//
//  PurchaseView.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import SwiftUI

struct PurchaseView: View {
    @EnvironmentObject var purchaseVm: PurchaseViewmodel
    
    var body: some View {
        Button{
            purchaseVm.purchase()
            
        }label: {
           Text("Purchase me")
        }
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
