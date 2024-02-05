//
//  AccountViewMedel.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import SwiftUI

final class AccountViewMedel: ObservableObject{
    
    @Published var fname: String = ""
    @Published var lname: String = ""
    @Published var email: String = ""
    @Published var birthdate: Date = Date()
    @Published var extraNap: Bool = false
    @Published var frequentRefills: Bool = false
    
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !fname.isEmpty &&  !lname.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("save changes complete")
    }
}
