//
//  OrderView.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 28/1/2567 BE.
//

import SwiftUI

struct OrderView: View {
    
    @State var orderItem = Mockdata.orderItem
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(orderItem) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            deleteItem(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button(action: {
                        //
                    }, label: {
                        APButton(title: "321 Place order")
                    })
                    .padding(.bottom, 25)
                }
                .navigationTitle("⌕ Order")
                
                if orderItem.isEmpty {
                    EmptyState(imageName: "Empty Order", message: "You doesn't add any appetizer yet.")
                }
            }
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        orderItem.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
