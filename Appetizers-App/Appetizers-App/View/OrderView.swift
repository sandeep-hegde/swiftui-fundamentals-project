//
//  OrderView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerListCellView(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.insetGrouped)
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$99 - place order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("📝 Orders")
        }
    }
    
    // For deleting order items
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}




struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
