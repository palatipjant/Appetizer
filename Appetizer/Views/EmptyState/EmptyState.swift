//
//  EmptyState.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .padding(.bottom)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "Empty Order", message: "You doesn't add any appetizer yet.")
}
