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
    var action: String
    
    var body: some View {
        
        Button(title) {
            print(action)
        }
        .frame(width: 280, height: 50)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .font(.system(size: 20, weight: .bold, design: .default))
        .cornerRadius(20)
    }
}
