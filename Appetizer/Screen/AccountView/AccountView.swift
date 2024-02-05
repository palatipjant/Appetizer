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
                    TextField("First Name", text: $viewModel.fname)
                    TextField("Last Name", text: $viewModel.lname)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                        .datePickerStyle(.automatic)
                    Button(action: {
                        print("save")
                    }, label: {
                        Text("Save Changes")
                    })
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled(true)
                } header: {
                    Text("PERSONAL INFO")
                }
                Section{
                    Toggle("Extra Napkins", isOn: $viewModel.extraNap)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                } header: {
                    Text("REQUESTS")
                }
                .tint(Color(.accent))
            }
            .navigationTitle("🧾 Account")
        }
    }
}

#Preview {
    AccountView()
}
