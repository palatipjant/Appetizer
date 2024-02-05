//
//  ContentView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Account", systemImage: "bag")
                }
                .badge(order.Item.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
