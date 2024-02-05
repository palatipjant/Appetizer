//
//  OrderView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.Item) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.deleteItem(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button(action: {
                        //
                    }, label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    })
                    .padding(.bottom, 25)
                }
                .navigationTitle("⌕ Order")
                
                if order.Item.isEmpty {
                    EmptyState(imageName: "Empty Order", message: "You doesn't add any appetizer yet.")
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
