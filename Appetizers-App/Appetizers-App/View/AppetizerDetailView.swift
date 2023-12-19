//
//  AppetizerDetailView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 19/12/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40.0) {
                    VStack(spacing: 5.0) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5.0) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5.0) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f")- Add to order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .background(Color.brandPrimary)
                    .clipShape(.rect(cornerRadius: 10))
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            Image(systemName: "x.circle.fill")
                .imageScale(.large)
                .symbolRenderingMode(.palette)
                .foregroundStyle(Color.black, Color.white)
                .opacity(0.6)
                .frame(width: 44, height: 44)
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
