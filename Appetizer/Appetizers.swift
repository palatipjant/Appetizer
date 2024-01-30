//
//  Appetizers.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 30/1/2567 BE.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizersResponse {
    let request: [Appetizer]
}

struct Mockdata {
    static let sampleAppetizer = Appetizer(id: 0, 
                                           name: "Sample",
                                           description: "this is mockdata",
                                           price: 23,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 24)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
