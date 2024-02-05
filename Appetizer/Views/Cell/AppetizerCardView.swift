//
//  AppetizerCardView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import SwiftUI

struct AppetizerCardView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack(spacing: 20){
            Image("asian-frand-steak")
                .resizable()
                .frame(width: 320, height: 225)
                .scaledToFit()
                .offset(y: -20)
            VStack(spacing: 20){
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
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
                Rectangle()
                    .frame(width: 220, height: 50)
                    .clipShape(.rect(cornerRadius: 12))
                    .overlay {
                        Text("$\(Mockdata.sampleAppetizer.price, specifier: "%.2f") - Add To Order")
                            .foregroundStyle(.white)
                            .bold()
                }
            }
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(
            Button(action: {
            //
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                    .padding()
            })
            , alignment: .topTrailing)
        }
    }



#Preview {
    AppetizerCardView(appetizer: Mockdata.sampleAppetizer)
}
