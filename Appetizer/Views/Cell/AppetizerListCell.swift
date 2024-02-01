//
//  AppetizerHStack.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 30/1/2567 BE.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 120, height: 90)
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 10))
                .padding(.trailing, 10)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .frame(alignment: .leading)
            }
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: Mockdata.sampleAppetizer)
}
