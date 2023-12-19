//
//  AppetizerModel.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import Foundation


// Object based on JSON
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


// Response object to handle JSON structure
struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test Appetizer", description: "This is the description for my appetizer.", price: 9.99, imageURL: "", calories: 100, protein: 9, carbs: 140)
    
    static let appetizer = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    //MARK - Sample data for Order View
    static let orderItemOne = Appetizer(id: 001, name: "Test Appetizer One", description: "This is the description for my appetizer.", price: 9.99, imageURL: "", calories: 100, protein: 9, carbs: 140)
    
    static let orderItemTwo = Appetizer(id: 002, name: "Test Appetizer Two", description: "This is the description for my appetizer.", price: 9.99, imageURL: "", calories: 100, protein: 9, carbs: 140)
    
    static let orderItemThree = Appetizer(id: 003, name: "Test Appetizer Three", description: "This is the description for my appetizer.", price: 9.99, imageURL: "", calories: 100, protein: 9, carbs: 140)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}



// JSON URL: https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers
