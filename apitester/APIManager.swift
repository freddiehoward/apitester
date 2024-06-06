//
//  APIManager.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import Foundation

class ApiManager: ObservableObject {
    
    static let shared = ApiManager()
    
    private init() {}
    
    private let baseURL: String = "https://catfact.ninja/fact"
    
    func completionHandler(completion: @escaping (CatFact) -> Void) {
           
           guard let url = URL(string: "https://catfact.ninja/fact") else {
               print("Invaild URL")
               return
           }
           
           let task = URLSession.shared.dataTask(with: url) { data, responses, error in
               if let error = error {
                   print("Error: \(error.localizedDescription)")
                   return
               }
               
               let decoder = JSONDecoder()
               
               guard let data = data,
                     let result = try? decoder.decode(CatFact.self, from: data) else {
                   print("Error Decoding")
                   return
               }
               completion(result)
           }
           task.resume()
    
       }
       
       
       
   }






