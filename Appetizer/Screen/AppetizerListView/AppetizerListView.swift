//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewMedel()
    
    var body: some View {
        ZStack{
            NavigationStack{
                List(viewModel.appetizers) { apperizer in
                    AppetizerListCell(appetizer: apperizer)
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Apperizers")
            }
            .onAppear(perform: {
                viewModel.getAppetizers()
            })
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}


