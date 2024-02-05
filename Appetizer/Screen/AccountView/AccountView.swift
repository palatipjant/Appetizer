//
//  AccountView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewMedel()
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("First Name", text: $viewModel.user.fname)
                    TextField("Last Name", text: $viewModel.user.lname)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                        .datePickerStyle(.automatic)
                    Button(action: {
                        viewModel.saveChanges()
                    }, label: {
                        Text("Save Changes")
                    })
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                } header: {
                    Text("PERSONAL INFO")
                }
                Section{
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNap)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                } header: {
                    Text("REQUESTS")
                }
                .tint(Color(.accent))
            }
            .navigationTitle("🧾 Account")
            .onAppear{
                viewModel.retrieveUser()
            }
            .alert(item: $viewModel.alertItem) { alert in
                Alert(title: alert.title,
                      message: alert.message,
                      dismissButton: alert.dismissButton)
            }
        }
    }
}

#Preview {
    AccountView()
}
