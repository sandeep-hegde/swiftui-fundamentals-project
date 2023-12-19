//
//  AccountView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var accountViewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $accountViewModel.firstName)
                    TextField("Last Name", text: $accountViewModel.lastName)
                    TextField("Email", text: $accountViewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
                    DatePicker("Birthday", selection: $accountViewModel.birthdate, displayedComponents: .date)
                    
                    Button {
                        accountViewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $accountViewModel.extraNapikns)
                    Toggle("Frequent Refills", isOn: $accountViewModel.frequentRefills)
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("🗂️ Account")
        }
        .alert(item: $accountViewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}




struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
