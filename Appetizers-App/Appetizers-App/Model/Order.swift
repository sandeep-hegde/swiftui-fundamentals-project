//
//  Order.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import Foundation

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    // For calculating order price
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    // For deleting order items
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
