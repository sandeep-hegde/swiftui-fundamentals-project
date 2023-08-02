//
//  AppetizerModel.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import Foundation


// Object based on JSON
struct Appetizer: Decodable {
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
struct AppetizerResponse {
    let request: [Appetizer]
}




struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test Appetizer", description: "Description for appetizer", price: 9.99, imageURL: "", calories: 100, protein: 9, carbs: 140)
    
    static let appetizer = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
