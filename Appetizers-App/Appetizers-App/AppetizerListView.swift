//
//  AppetizerListView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        //        NavigationView {
        //            Text("Appetizer List View")
        //                .navigationTitle("🍟 Appetizers")
        //        }
        //
        NavigationStack {
            List(MockData.appetizer) { appetizer in
                AppetizerListCellView(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}





struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
