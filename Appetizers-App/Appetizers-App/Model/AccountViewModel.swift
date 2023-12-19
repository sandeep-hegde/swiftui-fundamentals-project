//
//  AccountViewModel.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapikns = false
    @Published var frequentRefills = false
    
    @Published var alertItem: AlertItem?
    
    // Checking for all forms have some values
    var isValidForm:Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
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
        
        print("Changes have been saved successfully")
    }
}
