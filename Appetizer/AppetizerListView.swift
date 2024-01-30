//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationStack{
            List(appetizers) { apperizer in
                AppetizerListCell(appetizer: apperizer)
            }
            .listStyle(.plain)
            .navigationTitle("🍟 Apperizers")
        }
        .onAppear(perform: {
            getAppetizers()
        })
    }
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    AppetizerListView()
}


