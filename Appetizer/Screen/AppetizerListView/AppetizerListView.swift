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
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.appetizer_card = appetizer
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Apperizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear(perform: {
                viewModel.getAppetizers()
            })
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerCardView(appetizer: viewModel.appetizer_card!,
                                  isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, 
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}


