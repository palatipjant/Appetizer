//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack{
            List(Mockdata.appetizers) { apperizer in
                Text(apperizer.name)
            }
            .navigationTitle("🍟 Apperizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
