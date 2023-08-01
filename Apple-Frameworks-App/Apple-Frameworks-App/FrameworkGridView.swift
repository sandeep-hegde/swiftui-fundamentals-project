//
//  ContentView.swift
//  Apple-Frameworks-App
//
//  Created by Sandeep Hegde on 01/08/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(frameWorkName: "App Clips", frameWorkImageName: "app-clip")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}




struct FrameworkTitleView: View {
    
    var frameWorkName: String
    var frameWorkImageName: String
    
    var body: some View {
        VStack {
            Image(frameWorkImageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWorkName)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
