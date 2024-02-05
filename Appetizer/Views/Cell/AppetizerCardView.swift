//
//  AppetizerCardView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import SwiftUI

struct AppetizerCardView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(spacing: 20){
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 320, height: 225)
                .scaledToFit()
                .offset(y: -20)
            VStack(spacing: 20){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom)
                HStack(spacing: 40){
                    VStack{
                        Text("Calories")
                            .font(.footnote)
                            .fontWeight(.regular)
                        Text("\(appetizer.calories)")
                            .fontWeight(.light)
                    }
                    VStack{
                        Text("Carbs")
                            .font(.footnote)
                            .fontWeight(.regular)
                        Text("\(appetizer.carbs) g")
                            .fontWeight(.light)
                    }
                    VStack{
                        Text("Protein")
                            .font(.footnote)
                            .fontWeight(.regular)
                        Text("\(appetizer.protein) g")
                            .fontWeight(.light)
                    }
                }
            }
            Button {
                //
            } label: {
                APButton(title: "$\(Mockdata.sampleAppetizer.price, specifier: "%.2f") - Add To Order")
            }
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(
            Button(action: {
                isShowingDetail = false
            }, label: {
                XDismissButton()
            })
            , alignment: .topTrailing)
        }
    }



#Preview {
    AppetizerCardView(appetizer: Mockdata.sampleAppetizer, isShowingDetail: .constant(true))
}
