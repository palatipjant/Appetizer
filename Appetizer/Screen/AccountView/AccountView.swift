//
//  AccountView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AccountView: View {
    
    @State private var fname: String = ""
    @State private var lname: String = ""
    @State private var email: String = ""
    @State private var birthday: Date = Date()
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("First Name", text: $fname)
                    TextField("Last Name", text: $lname)
                    TextField("Email", text: $email)
                    DatePicker("Birthday", selection: $birthday, displayedComponents: .date)
                } header: {
                    Text("Personal Info")
                }

            }
            .navigationTitle("🧾 Account")
        }
    }
}

#Preview {
    AccountView()
}
