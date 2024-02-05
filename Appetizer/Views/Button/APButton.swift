//
//  APButton.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Rectangle()
            .frame(width: 220, height: 50)
            .clipShape(.rect(cornerRadius: 12))
            .overlay {
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
        }
    }
}
