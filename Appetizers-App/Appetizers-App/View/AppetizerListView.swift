//
//  AppetizerListView.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = ApperizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { altertItem in
            Alert(title: altertItem.title,
                  message: altertItem.message,
                  dismissButton: altertItem.dismissButton)
        }
    }
}




struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
