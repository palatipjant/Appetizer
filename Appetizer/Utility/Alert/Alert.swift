//
//  Alert.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("The data receive from the server was invalid, Please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was connecting issue to the server. If this persists, Please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request this time. Please check you network."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidForm = AlertItem(title: Text("Form not complete"),
                                        message: Text("Please fill all the info."),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Form not complete"),
                                        message: Text("Email invalid."),
                                        dismissButton: .default(Text("OK")))
}
