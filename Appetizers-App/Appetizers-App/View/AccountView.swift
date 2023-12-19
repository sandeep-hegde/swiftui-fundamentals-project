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
                    TextField("First Name", text: $accountViewModel.user.firstName)
                    TextField("Last Name", text: $accountViewModel.user.lastName)
                    TextField("Email", text: $accountViewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
                    DatePicker("Birthday", selection: $accountViewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        accountViewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $accountViewModel.user.extraNapikns)
                    Toggle("Frequent Refills", isOn: $accountViewModel.user.frequentRefills)
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("🗂️ Account")
        }
        .onAppear {
            accountViewModel.retriveUser()
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
