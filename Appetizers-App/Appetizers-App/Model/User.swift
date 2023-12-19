//
//  User.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapikns = false
    var frequentRefills = false
}
