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
    
    /*
    func searchFor(query: String, completion: @escaping ([ApiResult]) -> Void) {
        let query = "/autocomplete?query=\(query)"
        
        guard let url = URL(string: baseURL + query) else {
            print("Invalid URL")
            return

        
        let task = URLSession.shared.dataTask(with: url) { data, responses, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            let decoder = JSONDecoder()
            
            guard let data = data,
                  let results = try? decoder.decode([ApiResult].self, from: data) else {
                print("Error Decoding")
                return
            }
            completion(results)
        }
        task.resume()
    }

     */
     
    func searchWithId(query: String, completion: @escaping ([ApiResult]) -> Void) {
            let query = "/search?query=\(query)"
            
            guard let url = URL(string: baseURL + query) else {
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
                      let results = try? decoder.decode([ApiResult].self, from: data) else {
                    print("Error Decoding")
                    return
                }
                completion(results)
            }
            task.resume()
     
        }
    
    func completionHandler(query: String, completion: @escaping ([ApiResult]) -> Void) {
           let query = "https://api.openbrewerydb.org/v1/breweries/\(query)"
           
           guard let url = URL(string: query) else {
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
                     let results = try? decoder.decode([ApiResult].self, from: data) else {
                   print("Error Decoding")
                   return
               }
               completion(results)
           }
           task.resume()
    
       }
       
       
       
   }



struct ApiResult: Codable {
    let id: String
    let name: String
}
