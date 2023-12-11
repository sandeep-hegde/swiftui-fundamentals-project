//
//  FrameworkDetailView.swift
//  Apple-Frameworks-App
//
//  Created by Sandeep Hegde on 01/08/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            VStack() {
                HStack() {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            .padding()
    
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(titile: "Learn More")
            }
            Spacer()
        }
        .background(Color.mint.gradient.opacity(0.2))
        .sheet(isPresented: $isShowingSafariView, content: { SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)})
    }
}




struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
