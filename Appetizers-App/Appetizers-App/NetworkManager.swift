//
//  NetworkManager.swift
//  Appetizers-App
//
//  Created by Sandeep Hegde on 02/08/23.
//

import Foundation


final class NetworkManager {
    
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        // To check whether URL works
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        // Checking the errors
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            // Parsing the data
            do {
                let decoder = JSONDecoder()
                let decodResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
