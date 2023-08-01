//
//  SafariView.swift
//  Apple-Frameworks-App
//
//  Created by Sandeep Hegde on 01/08/23.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}
