//
//  XDismissButton.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    XDismissButton()
}
