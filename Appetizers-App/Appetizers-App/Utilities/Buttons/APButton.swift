//
//  APButton.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    APButton(title: "Test Title")
}
