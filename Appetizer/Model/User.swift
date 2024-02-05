//
//  User.swift
//  Appetizer
//
//  Created by Palatip Jantawong on 5/2/2567 BE.
//

import Foundation

struct User: Codable{
    
    var fname: String = ""
    var lname: String = ""
    var email: String = ""
    var birthdate: Date = Date()
    var extraNap: Bool = false
    var frequentRefills: Bool = false
    
    
}
