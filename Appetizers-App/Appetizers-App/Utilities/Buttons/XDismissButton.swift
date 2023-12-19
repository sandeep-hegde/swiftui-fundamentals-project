//
//  XDismissButton.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "x.circle.fill")
            .imageScale(.large)
            .symbolRenderingMode(.palette)
            .foregroundStyle(Color.black, Color.white)
            .opacity(0.6)
            .frame(width: 44, height: 44)
    }
}

#Preview {
    XDismissButton()
}
