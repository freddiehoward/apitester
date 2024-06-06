//
//  APIgetdatafile.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import Foundation

class APIStuffViewModel: ObservableObject {
    
    static let shared = APIStuffViewModel()
    
    private init() {}
    
    func getCatFactDataFromApi() async throws -> [CatFact] {
        
        let url = URL(string: "https://catfact.ninja/fact")! //its an optional
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let decoded = try JSONDecoder().decode(CatFactData.self, from: data)
        
        return decoded.results
        
    }
    
}

struct CatFactData: Codable {
    
    let results: [CatFact]
    
}

struct CatFact: Codable {
    
    let fact: Int
    
}


