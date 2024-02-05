//
//  Order.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import Foundation

final class Order: ObservableObject{
    
    @Published var Item: [Appetizer] = []
    
    var totalPrice: Double {
        Item.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        Item.append(appetizer)
    }
    
    func deleteItem(at offsets: IndexSet) {
        Item.remove(atOffsets: offsets)
    }
}
