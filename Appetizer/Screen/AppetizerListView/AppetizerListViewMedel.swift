//
//  AppetizerListViewMedel.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import SwiftUI

@MainActor final class AppetizerListViewMedel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    @Published var isShowingDetail = false
    @Published var appetizer_card: Appetizer?
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [self] in
//                isLoading = false
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                case .failure(let error):
//                    switch error{
//                    case .invalidData:
//                        alertItem = AlertContext.invalidResponse
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURL
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//        }
//    }
    func getAppetizers() {
        isLoading = true
        Task{
            do{
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch{
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.GeneralError
                }
                isLoading = false
            }
        }
    }
}
