//
//  PeopleViewModel.swift
//  Bulleseye
//
//  Created by ekincare on 07/04/23.
//

import Foundation

final class PeopleViewModel: ObservableObject{
    
    @Published  var people: [String] = []
    @Published  var isLoading: Bool = false
    
    
    func fetchPeople(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.people = ["Tunds","Billy","Bob","Geethu"]
            self?.isLoading = false
            
        }
        
    
}
