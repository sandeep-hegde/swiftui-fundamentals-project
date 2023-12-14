//
//  OrderView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            Text("Orders")
                .navigationTitle("📝 Orders")
        }
    }
}




struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
