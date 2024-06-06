//
//  ContentView.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    /*
    @State private var search: String = ""
    @State private var results: [ApiResult] = []
    
    @State private var searchId: String = ""
     */
    
    @ObservedObject var apiManager = ApiManager.shared
    
    @State var result: CatFact
    
    
    
    var body: some View {
        
        VStack{
            Text("hello")
            Text("")
            Button(action: {apiManager.completionHandler(completion: {result in
                self.result = result})}, label: {
                    Text("press me")
                })
            
            
            Text("\(result)")
            
        }
    }
}

#Preview {
    ContentView(result: sampleFact)
    }
