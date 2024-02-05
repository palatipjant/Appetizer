//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewMedel()
    @State private var isShowingDetail = false
    @State var appetizer_card: Appetizer = Mockdata.sampleAppetizer
    
    var body: some View {
        ZStack{
            NavigationStack{
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                            appetizer_card = appetizer
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Apperizers")
            }
            .onAppear(perform: {
                viewModel.getAppetizers()
            })
            
            if isShowingDetail {
                AppetizerCardView(appetizer: appetizer_card)
            }
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


