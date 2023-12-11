//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Sandeep Hegde on 31/07/23.
//

import SwiftUI


struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .clipShape(.rect(cornerRadius: 20))
    }
    
}

