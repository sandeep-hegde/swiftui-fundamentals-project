//
//  AppetizerListCellView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct AppetizerListCellView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.regular)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}




struct AppetizerListCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCellView(appetizer: MockData.sampleAppetizer)
    }
}

