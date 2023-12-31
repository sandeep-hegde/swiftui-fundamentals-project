//
//  ContentView.swift
//  Apple-Frameworks-App
//
//  Created by Sandeep Hegde on 01/08/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @ObservedObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns:viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .background( LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .topTrailing, endPoint: .bottomLeading).opacity(0.3))
            .navigationDestination(for: Framework.self) {
                framework in FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


