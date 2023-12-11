//
//  AFButton.swift
//  Apple-Frameworks-App
//
//  Created by Sandeep Hegde on 01/08/23.
//

import SwiftUI

struct AFButton: View {
    
    var titile: String
    
    var body: some View {
        Text(titile)
            .font(.title2)
            .fontWeight(.medium)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 15))
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(titile: "Test Title")
    }
}
