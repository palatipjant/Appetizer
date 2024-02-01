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
                .frame(width: 280, height: 240)
                .scaledToFit()
                .overlay {
                    VStack{
                        HStack{
                            Spacer()
                            Button(action: {
                                //
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(.white)
                            })
                        }
                        Spacer()
                    }.padding()
                }
                .offset(y: -10)
            Text(appetizer.name)
                .font(.title)
                .fontWeight(.semibold)
            Text(appetizer.description)
                .font(.system(size: 18))
                .padding(.horizontal, 15)
                .multilineTextAlignment(.center)
            HStack(spacing: 25){
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
        .frame(width: 280, height: 550)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    AppetizerCardView(appetizer: Mockdata.sampleAppetizer)
}
