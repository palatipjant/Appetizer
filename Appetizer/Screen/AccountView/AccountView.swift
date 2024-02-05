//
//  AccountView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewMedel()
    @FocusState private var focusTextField: FormTextField?
    
    enum FormTextField {
        case fname, lname, email
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("First Name", text: $viewModel.user.fname)
                        .focused($focusTextField, equals: .fname)
                        .onSubmit {
                            focusTextField = .lname
                        }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lname)
                        .focused($focusTextField, equals: .lname)
                        .onSubmit {
                            focusTextField = .email
                        }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .focused($focusTextField, equals: .email)
                        .onSubmit {
                            focusTextField = nil
                        }
                        .submitLabel(.continue)
                    
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
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") { focusTextField = nil }
                }
            }
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
