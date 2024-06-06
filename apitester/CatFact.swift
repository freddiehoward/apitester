//
//  CatFact.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import Foundation

struct CatFact: Codable {
    
    let fact: String
    let length: Int
    
}

let sampleFact = CatFact(fact: "Cats, yippee", length: 16)
