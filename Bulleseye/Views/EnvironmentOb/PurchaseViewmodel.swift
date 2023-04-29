//
//  PurchaseViewmodel.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import Foundation

final class PurchaseViewmodel : ObservableObject {
    
    @Published var hasPurchased: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.isLoading = false
            self?.hasPurchased = false
            
        }
    }
    
}
